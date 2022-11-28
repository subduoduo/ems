package com.itany.qdd.util;

import java.util.UUID;

/**
 * Author：
 * Date：2022-11-28 15:41
 * Description：生成UUID，给图片重命名
 */
public class StringUtil {

    public static String renameFilename(String filename) {
        int dotIndex = filename.lastIndexOf(".");
        String suffix = filename.substring(dotIndex);
        return UUID.randomUUID().toString() + suffix;
    }
}
