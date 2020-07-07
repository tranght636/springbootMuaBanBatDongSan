package com.htt.batdongsan.utils;

public class StringUtil {
	public static Boolean isNullOrEmpty(String str) {
		if(str == null || str.equals("")) {
			return true;
		}
		return false;
	}
}
