package com.randyluc.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.randyluc.savetravels.models.Expense;
import com.randyluc.savetravels.repositories.ExpenseRep;

@Service
public class ExpenseServ {
	private final ExpenseRep ExpenseRep;
	
	public ExpenseServ(ExpenseRep expenseRep) {
		this.ExpenseRep= expenseRep;
	}
	
	public List<Expense>allExpenses(){
		return ExpenseRep.findAll();
	}
	
	public Expense createExpense(Expense expense) {
		return ExpenseRep.save(expense);
		
	}
	
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense= ExpenseRep.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		}
		
		else {
			return null;
		}
	}
	
	public Expense updareExpense(Expense expense) {
		return ExpenseRep.save(expense);
	}
	
	public void deleteExpense(Expense expense) {
		ExpenseRep.delete(expense);
	}
	
	
	
}
