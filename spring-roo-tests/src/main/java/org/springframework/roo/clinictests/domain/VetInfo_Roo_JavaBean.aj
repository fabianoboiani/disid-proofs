// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.domain;

import org.springframework.roo.clinictests.domain.VetInfo;
import org.springframework.roo.clinictests.domain.reference.Specialty;

privileged aspect VetInfo_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long VetInfo.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VetInfo.getFirstName() {
        return this.firstName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VetInfo.getLastName() {
        return this.lastName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Specialty
     */
    public Specialty VetInfo.getSpecialty() {
        return this.specialty;
    }
    
}
