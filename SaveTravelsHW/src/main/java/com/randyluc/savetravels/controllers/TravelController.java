package com.randyluc.savetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.randyluc.savetravels.models.Expense;
import com.randyluc.savetravels.services.ExpenseServ;

@Controller
public class TravelController {
	@Autowired 
	ExpenseServ expenseServ;
	
	@GetMapping("/")
	public String home() {
		return "redirect:/expenses";
	}
	@GetMapping ("/expenses")
	public String indes (@ModelAttribute("expense")Expense expense,Model model) {
		List<Expense>expenses= expenseServ.allExpenses();
		model.addAttribute("expenses",expenses);
		return "index.jsp";
	}
	@PostMapping("/expenses")
	public String index (@Valid @ModelAttribute("expense")Expense expense,BindingResult result,Model model) {
		if(result.hasErrors()) {
			List<Expense>expenses= expenseServ.allExpenses();
			model.addAttribute("expenses",expenses);
			return "index.jsp";
		}
		else {
			expenseServ.createExpense(expense);
			return "redirect:/expenses";
		}
	}
	
	@GetMapping("/edit/{id}")
	public String edit (@PathVariable("id")Long id, Model model) {
		model.addAttribute("expenses",expenseServ.findExpense(id));
		return"edit.jsp";
	}
	
	@PostMapping("/edit/{id}")
	public String update(@PathVariable ("id")Long id, Model model,@Valid @ModelAttribute("expense")Expense expense,BindingResult result) {
		if(result.hasErrors()) {
			model.addAttribute("expenses",expenseServ.findExpense(id));
			return "redirect:/edit/{id}";
		}
		else {
			expenseServ.createExpense(expense);
			return "redirect:/expenses";
		}
	}
	@GetMapping ("/expenses/{id}")
	public String showExpense(@PathVariable("id")Long id, Model model) {
		model.addAttribute("expense", expenseServ.findExpense(id));
		return "show.jsp";
	}
	@RequestMapping ("/expenses/delete/{id}")
	public String deleteExpense (@PathVariable("id")Long id) {
		expenseServ.deleteExpense(expenseServ.findExpense(id));
		return "redirect :/expenses";
	}
}
