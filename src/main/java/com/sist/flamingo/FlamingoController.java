package com.sist.flamingo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("fc")
public class FlamingoController {

	@RequestMapping("main.do")
	public String mainView(HttpServletRequest req)
	{
		return "main/index.jsp";
	}
	@RequestMapping("planner.do")
	public String Planner(HttpServletRequest req)
	{
		return "planner/practice3.jsp";
	}
}