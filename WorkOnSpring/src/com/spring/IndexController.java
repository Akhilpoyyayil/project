package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.beans.ConversionNotSupportedException;

import com.been.RegistrationBeen;
import com.services.RegistrationService;

@Controller
public class IndexController {
	public String directory11="/home/akhil";
	@RequestMapping(value = "/", method = RequestMethod.GET)
		
		public String init(Model model) {
			model.addAttribute("msg", "Please Enter Your Login Details");
			return "index";
		}
	@RequestMapping(value="/registration", method = RequestMethod.POST )
	public String init(Model model, @ModelAttribute("registrationBean") RegistrationBeen registrationBean,@RequestParam CommonsMultipartFile file,  
	           HttpSession session)
	{
		
		System.out.println("hai");
		String filename = file.getOriginalFilename();  
		
		System.out.println(directory11 +" "+filename);
		try{
			byte barr[] = file.getBytes();  
		    BufferedOutputStream ss =new BufferedOutputStream(new FileOutputStream(directory11 + "/"+filename));  
		    ss.write(barr);  
		    ss.flush();  
		    ss.close();  
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		int rt=-1;
		RegistrationService reg=new RegistrationService();
		registrationBean.setFileName(filename);
		rt=reg.register(registrationBean);
		if(rt==1){
			model.addAttribute("name", registrationBean.getFname());
			return "home";
		}else
			model.addAttribute("msg","Registration failed");
			return "index";

	
		
	}
}
