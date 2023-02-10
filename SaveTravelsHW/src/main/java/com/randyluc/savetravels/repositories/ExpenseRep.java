package com.randyluc.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.randyluc.savetravels.models.Expense;

@Repository
public interface ExpenseRep extends CrudRepository <Expense,Long> {
	List<Expense>findAll();
}
