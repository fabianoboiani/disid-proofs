// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.service.impl;

import org.springframework.roo.clinictests.domain.Owner;
import org.springframework.roo.clinictests.service.impl.OwnerServiceImpl;
import org.springframework.roo.clinictests.service.impl.OwnerServiceImpl_Roo_Security_Authorizations;
import org.springframework.security.access.prepost.PreAuthorize;

privileged aspect OwnerServiceImpl_Roo_Security_Authorizations {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, OwnerServiceImpl_Roo_Security_Authorizations;
    
    declare @method: public void OwnerServiceImpl.delete(Owner): @PreAuthorize("hasRole('ADMIN')");
    
    declare @method: public void OwnerServiceImpl.delete(Iterable<Long>): @PreAuthorize("hasRole('ADMIN')");
    
}
