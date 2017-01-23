// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.domain;

import java.util.Calendar;
import java.util.Set;
import org.springframework.roo.clinictests.domain.Owner;
import org.springframework.roo.clinictests.domain.Pet;
import org.springframework.roo.clinictests.domain.Visit;
import org.springframework.roo.clinictests.domain.reference.PetType;

privileged aspect Pet_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Pet.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Pet.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Pet.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Pet.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Boolean
     */
    public boolean Pet.isSendReminders() {
        return this.sendReminders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sendReminders
     */
    public void Pet.setSendReminders(boolean sendReminders) {
        this.sendReminders = sendReminders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Pet.getName() {
        return this.name;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     */
    public void Pet.setName(String name) {
        this.name = name;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Float
     */
    public Float Pet.getWeight() {
        return this.weight;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param weight
     */
    public void Pet.setWeight(Float weight) {
        this.weight = weight;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PetType
     */
    public PetType Pet.getType() {
        return this.type;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param type
     */
    public void Pet.setType(PetType type) {
        this.type = type;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Visit> Pet.getVisits() {
        return this.visits;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visits
     */
    public void Pet.setVisits(Set<Visit> visits) {
        this.visits = visits;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Owner
     */
    public Owner Pet.getOwner() {
        return this.owner;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param owner
     */
    public void Pet.setOwner(Owner owner) {
        this.owner = owner;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Pet.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdDate
     */
    public void Pet.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Pet.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdBy
     */
    public void Pet.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Pet.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedDate
     */
    public void Pet.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Pet.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedBy
     */
    public void Pet.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
    
}
