package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.Sale;

@Repository
public interface SaleRepo extends JpaRepository<Sale, Integer>{

}
