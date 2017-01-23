// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.roo.clinictests.web.OwnersItemPetsThymeleafController;
import org.springframework.roo.clinictests.web.OwnersItemPetsThymeleafLinkFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect OwnersItemPetsThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: OwnersItemPetsThymeleafLinkFactory implements MethodLinkFactory<OwnersItemPetsThymeleafController>;
    
    declare @type: OwnersItemPetsThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String OwnersItemPetsThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String OwnersItemPetsThymeleafLinkFactory.CREATEFORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String OwnersItemPetsThymeleafLinkFactory.REMOVEFROMPETS = "removeFromPets";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String OwnersItemPetsThymeleafLinkFactory.REMOVEFROMPETSBATCH = "removeFromPetsBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String OwnersItemPetsThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<OwnersItemPetsThymeleafController> OwnersItemPetsThymeleafLinkFactory.getControllerClass() {
        return OwnersItemPetsThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents OwnersItemPetsThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(DATATABLES)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATEFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).createForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMPETS)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromPets(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMPETSBATCH)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromPetsBatch(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
