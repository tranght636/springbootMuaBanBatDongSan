package com.htt.batdongsan.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.htt.batdongsan.model.RoleModel;
import com.htt.batdongsan.model.UserModel;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserModel user = userService.selectOne(username);
		if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
		
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		List<RoleModel> roles = roleService.selectList(user.getId());
		for (RoleModel role : roles) {
			grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
		}
		
		return new org.springframework.security.core.userdetails.User(
				user.getEmail(), user.getPassword(), grantedAuthorities);
	}

}
