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
                .addDecoratorPath("/login*", "/WEB-INF/decorators/SignInSignUpDecorator.jsp")
                .addDecoratorPath("/register*", "/WEB-INF/decorators/SignInSignUpDecorator.jsp")
                .addDecoratorPath("/trang-ca-nhan*", "/WEB-INF/decorators/TrangCaNhan.jsp")
                .addDecoratorPath("/*", "/WEB-INF/decorators/WebDecorator.jsp")
                .addExcludedPath("/api*");
    }
}