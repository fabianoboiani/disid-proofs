// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.clinictests.web;

import org.springframework.roo.clinictests.service.api.VisitService;
import org.springframework.roo.clinictests.web.VisitsCollectionJsonController;

privileged aspect VisitsCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private VisitService VisitsCollectionJsonController.visitService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VisitService
     */
    public VisitService VisitsCollectionJsonController.getVisitService() {
        return visitService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitService
     */
    public void VisitsCollectionJsonController.setVisitService(VisitService visitService) {
        this.visitService = visitService;
    }
    
}
