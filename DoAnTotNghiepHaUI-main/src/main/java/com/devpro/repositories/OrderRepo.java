package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.devpro.entities.Order;

@Repository
public interface OrderRepo extends JpaRepository<Order, Integer> {

}
