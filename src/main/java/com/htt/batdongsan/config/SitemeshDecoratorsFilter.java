package com.htt.batdongsan.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

/**
 * SitemeshDecoratorsFilter
 */
public class SitemeshDecoratorsFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/admin*", "/WEB-INF/decorators/AdminDecorator.jsp")
                .addDecoratorPath("/sign-in*", "/WEB-INF/decorators/SignInSignUpDecorator.jsp")
                .addDecoratorPath("/sign-up*", "/WEB-INF/decorators/SignInSignUpDecorator.jsp")
                .addDecoratorPath("/trang-ca-nhan*", "/WEB-INF/decorators/TrangCaNhan.jsp")
                .addDecoratorPath("/*", "/WEB-INF/decorators/WebDecorator.jsp")
                .addExcludedPath("/api*");
    }
}