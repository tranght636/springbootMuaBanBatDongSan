package com.htt.batdongsan.common;

public class MyString{
    public static String makeBeautiful(String str){
        return str.trim().replaceAll("\\s+", " ");
    }
}