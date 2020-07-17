package com.htt.batdongsan.config;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.AccountUtil;

@Component
public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler, LogoutSuccessHandler {

	private final String USER_ROLE = "USER";
	private final String ADMIN_ROLE = "ADMIN";
	
    @Autowired
    HttpSession session;
    
    @Autowired
    UserService userService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
        String email = "";
        if(authentication.getPrincipal() instanceof Principal) {
             email = ((Principal)authentication.getPrincipal()).getName();

        }else {
            email = ((User)authentication.getPrincipal()).getUsername();
        }
        UserModel userModel = userService.selectOne(email);
        session.setAttribute("USER", userModel);
        //response.sendRedirect("/login-success");
        
        List<String> roleNames = AccountUtil.getRoleNames();
		if(roleNames.contains(ADMIN_ROLE)) {
			response.sendRedirect("/admin/quan-ly-nguoi-dung");
			return;
        }
        if(roleNames.contains("CTV")){
            response.sendRedirect("/");
			return;
        }
		if(roleNames.contains(USER_ROLE)) {
			response.sendRedirect("/trang-ca-nhan/cap-nhat-thong-tin");
			return;
		}
		response.sendRedirect("/403");
    }

	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		request.getSession().removeAttribute("USER");
		response.sendRedirect("/");
	}

}
