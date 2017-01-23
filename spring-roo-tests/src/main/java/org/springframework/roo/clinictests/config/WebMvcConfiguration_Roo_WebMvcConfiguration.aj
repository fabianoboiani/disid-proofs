// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.config;

import io.tracee.binding.springmvc.TraceeInterceptor;
import java.lang.Override;
import java.util.Locale;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.roo.clinictests.config.WebMvcConfiguration;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

privileged aspect WebMvcConfiguration_Roo_WebMvcConfiguration {
    
    declare parents: WebMvcConfiguration extends WebMvcConfigurerAdapter;
    
    declare @type: WebMvcConfiguration: @Configuration;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LocalValidatorFactoryBean
     */
    @Primary
    @Bean
    public LocalValidatorFactoryBean WebMvcConfiguration.validator() {
        return new LocalValidatorFactoryBean();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LocaleResolver
     */
    @Bean
    public LocaleResolver WebMvcConfiguration.localeResolver() {
        SessionLocaleResolver localeResolver = new SessionLocaleResolver();
        localeResolver.setDefaultLocale(new Locale("en"));
        return localeResolver;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LocaleChangeInterceptor
     */
    @Bean
    public LocaleChangeInterceptor WebMvcConfiguration.localeChangeInterceptor() {
        LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
        localeChangeInterceptor.setParamName("lang");
        return localeChangeInterceptor;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param registry
     */
    @Override
    public void WebMvcConfiguration.addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(localeChangeInterceptor());
        registry.addInterceptor(new TraceeInterceptor());
    }
    
}
