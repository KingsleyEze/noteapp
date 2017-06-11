package com.insightafrica.note.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.insightafrica.note.models.Note;
import com.insightafrica.note.services.NoteService;

@Controller
public class HomeController {

	@Autowired
	private NoteService noteService;
	
	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception{
		
		List<Note> noteList = noteService.list();
		ModelAndView model = new ModelAndView("AppStart");
		model.addObject("notes", noteList);
		
		System.out.println(noteList);
		return model;
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView createNote() {
		ModelAndView model = new ModelAndView("NoteForm");
		model.addObject("note", new Note());
		return model;		
	}
	
	@RequestMapping(value = "/view/{noteId}", method = RequestMethod.GET)
	public ModelAndView viewNote(@PathVariable("noteId") int noteId) {
		Note note = noteService.get(noteId);
		ModelAndView model = new ModelAndView("Note");
		model.addObject("note", note);
		return model;		
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editNote(HttpServletRequest request) {
		int noteId = Integer.parseInt(request.getParameter("id"));
		Note note = noteService.get(noteId);
		ModelAndView model = new ModelAndView("NoteForm");
		model.addObject("note", note);
		return model;		
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteNote(HttpServletRequest request) {
		int noteId = Integer.parseInt(request.getParameter("id"));
		noteService.delete(noteId);
		return new ModelAndView("redirect:/");		
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute Note note) {
		noteService.saveOrUpdate(note);
		return new ModelAndView("redirect:/");
	}
}
