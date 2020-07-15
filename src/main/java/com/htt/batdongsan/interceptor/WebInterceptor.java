package com.htt.batdongsan.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.htt.batdongsan.model.DanhMucChungModel;
import com.htt.batdongsan.model.DanhMucModel;
import com.htt.batdongsan.service.DanhMucChungService;
import com.htt.batdongsan.service.DanhMucService;
import com.htt.batdongsan.service.ProvinceService;

@Component
public class WebInterceptor extends  HandlerInterceptorAdapter {

	@Autowired
	DanhMucChungService danhMucChungService;
	
	@Autowired
	DanhMucService danhMucService;
	
	@Autowired
	ProvinceService provinceService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		List<DanhMucChungModel> danhMucChungs = danhMucChungService.selectAll();
		request.setAttribute("danhMucChungs", danhMucChungs);
		if(danhMucChungs.size() > 0) {
			Integer dmcId = danhMucChungs.get(0).getId();
			List<DanhMucModel> danhMucs = danhMucService.selectDanhMucByDanhMucChungId(dmcId);
			request.setAttribute("danhMucs", danhMucs);
		}
		
		Object provinces = provinceService.selectAll();
		request.setAttribute("provinces", provinces);
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	
}
