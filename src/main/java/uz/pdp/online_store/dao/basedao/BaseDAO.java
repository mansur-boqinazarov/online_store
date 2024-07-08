package uz.pdp.online_store.dao.basedao;


import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.validation.constraints.NotNull;
import uz.pdp.online_store.entity.auditable.Auditable;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

public abstract class BaseDAO<T extends Auditable, ID extends Serializable> {
    protected static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("uz.pdp");
    protected static final EntityManager em = emf.createEntityManager();

    private final Class<T> persistentClass;

    @SuppressWarnings("unchecked")
    protected BaseDAO() {
        this.persistentClass = (Class<T>) (((ParameterizedType) getClass().getGenericSuperclass())
                .getActualTypeArguments()[0]);
    }

    public T save(T entity) {
        begin();
        em.persist(entity);
        commit();
        return entity;
    }
    public T update(T entity) {
        begin();
        em.merge(entity);
        commit();
        return entity;
    }
    public T findById(@NotNull ID id) {
        begin();
        T entity = em.find(persistentClass, id);
        commit();
        return entity;
    }
    public List<T> findAll(){
        begin();
        List<T> entities = em.createQuery("from "+persistentClass.getName(), persistentClass).getResultList();
        commit();
        return entities;
    }
    public boolean deleteById(@NotNull ID id) {
        begin();
        em.createQuery("delete from " + persistentClass.getSimpleName() + " t where t.id = :id")
                .setParameter("id", id)
                .executeUpdate();
        commit();
        return true;
    }

    protected void begin(){
        em.getTransaction().begin();
    }
    protected void commit(){
        em.getTransaction().commit();
    }
    protected void rollback(){
        em.getTransaction().rollback();
    }
}