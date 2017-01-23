package org.springframework.roo.clinictests.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.clinictests.domain.Visit;

/**
 * = VisitRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = VisitRepositoryCustom.class)
public class VisitRepositoryImpl extends QueryDslRepositorySupportExt<Visit> {

    /**
     * TODO Auto-generated constructor documentation
     */
    VisitRepositoryImpl() {
        super(Visit.class);
    }
}