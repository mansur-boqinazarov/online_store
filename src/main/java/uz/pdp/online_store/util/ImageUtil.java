package uz.pdp.online_store.util;

import java.util.Base64;

public class ImageUtil {
    public static String getBase64Image(byte[] imageBytes) {
        return Base64.getEncoder().encodeToString(imageBytes);
    }
}

