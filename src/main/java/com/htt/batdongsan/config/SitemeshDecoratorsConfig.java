package com.htt.batdongsan.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * SitemeshDecoratorsConfig
 */
@Configuration
public class SitemeshDecoratorsConfig extends SpringBootServletInitializer {
    @Bean
    public FilterRegistrationBean<SitemeshDecoratorsFilter> siteMeshFilter() {
        FilterRegistrationBean<SitemeshDecoratorsFilter> filter = new FilterRegistrationBean<>();
        filter.setFilter(new SitemeshDecoratorsFilter());
        filter.addUrlPatterns("/*");
        return filter;
    }
}