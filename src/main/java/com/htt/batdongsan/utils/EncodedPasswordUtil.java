package com.htt.batdongsan.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncodedPasswordUtil {
	// Encryte Password with BCryptPasswordEncoder
    public static String encode(String password) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.encode(password);
    }
}
