package com.htt.batdongsan.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.htt.batdongsan.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsServiceImpl userDetailsService;
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
	
	@Autowired
	AuthenticationSuccessHandler authenticationSuccessHandler;
	
	@Autowired
	LogoutSuccessHandler logoutSuccessHandler;
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
        http
            .authorizeRequests()
                .antMatchers("/trang-ca-nhan*", "/trang-ca-nhan/*").hasAnyAuthority("USER", "ADMIN")
                .antMatchers("/admin/*").hasAnyAuthority("ADMIN")
                .antMatchers("/*").permitAll()
                .and()
            .formLogin()
            	.permitAll()
            	.loginProcessingUrl("/j_spring_security_login")
            	.loginPage("/login")
            	.usernameParameter("email")
            	.passwordParameter("password")
            	.successHandler(authenticationSuccessHandler)
            	//.defaultSuccessUrl("/login-success")
            	.failureUrl("/login?message=Invalid Email or Password")
            	.and()
            .logout()
            	.permitAll()
            	.logoutUrl("/logout")
            	.logoutSuccessHandler(logoutSuccessHandler)
            	//.logoutSuccessUrl("/")
            	.and()
            .exceptionHandling()
                .accessDeniedPage("/403");
    }
	
}
