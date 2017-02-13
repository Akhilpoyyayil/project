package com.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.been.RegistrationBeen;
import com.services.RegistrationService;

@Controller
public class IndexController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
		
		public String init(Model model) {
			model.addAttribute("msg", "Please Enter Your Login Details");
			return "index";
		}
	@RequestMapping(value="/registration", method = RequestMethod.POST )
	public String init(Model model, @ModelAttribute("registrationBean") RegistrationBeen registrationBean)
	{
		int rt=-1;
		RegistrationService reg=new RegistrationService();
		rt=reg.register(registrationBean);
		if(rt==1){
			model.addAttribute("name", registrationBean.getFname());
			return "home";
		}else
			model.addAttribute("msg","Registration failed");
			return "index";
		
		
	}
}
