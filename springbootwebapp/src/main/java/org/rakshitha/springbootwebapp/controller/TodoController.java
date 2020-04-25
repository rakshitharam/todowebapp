package org.rakshitha.springbootwebapp.controller;

import java.util.Date;

import org.rakshitha.springbootwebapp.service.LoginService;
import org.rakshitha.springbootwebapp.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("name")
public class TodoController {
	
	@Autowired
	TodoService todoService;
	
	@RequestMapping(value="/list-todos", method = RequestMethod.GET)
	//@ResponseBody
	public String showTodos(ModelMap model) {
		String name = (String)model.get("name");
		model.put("todos", todoService.retrieveTodos(name));
		return "list-todos";
	}
	
	@RequestMapping(value="/add-todo", method = RequestMethod.GET)
	//@ResponseBody
	public String showAddTodo(ModelMap model) {
		
		return "todo";
	}
	
	@RequestMapping(value="/add-todo", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @RequestParam String desc) {
		todoService.addTodo((String)model.get("name"), desc, new Date(), false);
		
		return "redirect:/list-todos";
	}

	@RequestMapping(value="/delete-todo", method = RequestMethod.GET)
	//@ResponseBody
	public String deleteTodo(@RequestParam int id) {
		todoService.deleteTodo(id);
		return "redirect:/list-todos";
	}
}
