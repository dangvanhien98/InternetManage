package spring.mvc.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import spring.mvc.model.May;
import spring.mvc.model.SuDungMay;
import spring.mvc.service.MayService;
import spring.mvc.service.SuDungMayService;

@Controller
public class MayController {
	@Autowired
	MayService mayService;
	
	@Autowired
	SuDungMayService sudungmayService;

	@RequestMapping("listMay")
	public String showListMay(Model model) {
		model.addAttribute("dsMay", mayService.findAll());
		
		model.addAttribute("addMay", new May());
		
	
		return "listMay";
		
	}
	
	@RequestMapping(value = "/addMay", method = RequestMethod.POST)
	public String addMay(@ModelAttribute("addMay") May may ,Model model) {		
		mayService.insert(may);
		return "redirect:listMay";
	}
	

	@RequestMapping("dangkyMay")
	public String showRegisterMay(Model model) {
		model.addAttribute("listRegister", mayService.getMayDK());
	
			return "dangkyMay";
		
		
	}
	
	@RequestMapping(value = "/sudungMay", method = RequestMethod.GET)
	public String sudungMay(@ModelAttribute("sudungMay") SuDungMay sd ,Model model) {		
		if(sudungmayService.insert(sd)==true) {
			mayService.updateMay(sd.getMaMay());
			
			return "redirect:dangkyMay";
		}
		model.addAttribute("thongbao", true);
		return "sudungMay";
	}
	
	@RequestMapping("xoaMay")
	public String deleteMay(Model model, HttpServletRequest request) {			
		mayService.deleteMay(request.getParameter("mamay"));
		return "redirect:listMay";
	}
	

	
	@RequestMapping(value = "/suaMay")
	public String editMay(Model model, HttpServletRequest request) {
		System.out.println(request.getParameter("mamay"));
		model.addAttribute("editMay", mayService.findByID(request.getParameter("mamay")));
		
		return "suaMay";
	}
	
	@RequestMapping(value = "saveEdit", method = RequestMethod.POST)
	public String saveEdit(@ModelAttribute("editMay") May may, Model model) {
		may.setMaMay(may.getMaMay());
		may.setViTri(may.getViTri());
		may.setTrangThai(may.getTrangThai());
		mayService.update(may);
		return "redirect:listMay";
	}

}
