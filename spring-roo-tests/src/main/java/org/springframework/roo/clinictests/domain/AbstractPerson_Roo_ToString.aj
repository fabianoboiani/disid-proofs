// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.domain;

import org.springframework.roo.clinictests.domain.AbstractPerson;

privileged aspect AbstractPerson_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String AbstractPerson.toString() {
        return "AbstractPerson {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", firstName='" + firstName + '\'' + 
                ", lastName='" + lastName + '\'' + 
                ", address='" + address + '\'' + 
                ", city='" + city + '\'' + 
                ", telephone='" + telephone + '\'' + 
                ", homePage='" + homePage + '\'' + 
                ", email='" + email + '\'' + 
                ", birthDay='" + birthDay + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
