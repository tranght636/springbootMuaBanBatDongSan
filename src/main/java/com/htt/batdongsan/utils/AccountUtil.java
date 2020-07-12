package com.htt.batdongsan.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;

@Component
public class AccountUtil {
	
	@Autowired
	UserService userService;
	
	@SuppressWarnings({ "unchecked" })
	public static List<String> getRoleNames() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		List<String> roleNames = new ArrayList<String>();
		if (principal instanceof UserDetails) {
			Set<GrantedAuthority> grantedAuthorities = (Set<GrantedAuthority>) ((UserDetails) principal).getAuthorities();
    		Iterator<GrantedAuthority> value = grantedAuthorities.iterator();
    		while (value.hasNext()) { 
    			roleNames.add(value.next().getAuthority());
            } 
		}
		return roleNames;
	}
	
	public UserModel getUser() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String email = ((UserDetails) principal).getUsername();
			System.out.println(email);
			UserModel userModel = userService.selectOne("tranght636@gmail.com");
			return userModel;
		}
		return null;
	}
}
