package com.dalugar.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dalugar.dto.FormDTO;

@Controller
public class HomeController {

	@RequestMapping(value = {"/","/public"}, method = RequestMethod.GET)
    public String displayPublicHome(Model model) {
		return "/public/home";
	}
	
	@RequestMapping(value = "/private", method = RequestMethod.GET)
    public String displayPrivateHome(Model model) {
		return "/private/home";
	}
	
	@RequestMapping(value = "/private/elRockLoco", method = RequestMethod.GET)
    public String displayPrivateRock(Model model) {
		return "/private/rock_loco";
	}
	
	@ModelAttribute
	public FormDTO createFormBean() {
		return new FormDTO();
	}
	
	@RequestMapping(value = "/", method=RequestMethod.POST)
	public String submitMessage(@Valid FormDTO formDTO, BindingResult result,
								SessionStatus sessionStatus,
								RedirectAttributes redirectAttrs) {
		
		if (result.hasErrors()) {
			return "/public/home";
		}
		String message = formDTO.toString();
		sessionStatus.setComplete();
		redirectAttrs.addFlashAttribute("message", message);
		
		return "redirect:/";
	}
}
