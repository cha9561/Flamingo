package com.sist.flamingo;


import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import java.util.*;
@Controller("pc")
public class PlannerController {
	@RequestMapping("planer_value.do")
	public String planner_value(HttpServletRequest req)
	{
		String cityname=req.getParameter("cityname");
		String cityno=req.getParameter("cityno");
		
		/*String page=req.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=10;
		int start=(curpage*rowSize)-rowSize;
		int end=curpage*rowSize;
		map.put("start", start);
		map.put("end", end);
		List<boardVO> list=boardDAO.boardAllData(map);
		int totalpage=boardDAO.boardTotalpage();
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "board/board_list.jsp");*/
		req.setAttribute("jsp", "planner.planner_value.jsp");
		return "planner/plannerMain.jsp";
	}
	@RequestMapping("board_content.do")
	public String board_content(HttpServletRequest req)
	{
		/*String no=req.getParameter("no");
		String page=req.getParameter("page");
		boardVO vo=boardDAO.boardContentData(Integer.parseInt(no));
		req.setAttribute("page", page);
		req.setAttribute("vo", vo);
		
		req.setAttribute("jsp", "board/board_content.jsp");*/
		return "user/main.jsp";
	}
	@RequestMapping("board_insert.do")
	public String board_insert(HttpServletRequest req)
	{
		req.setAttribute("jsp", "board/board_insert.jsp");
		return "user/main.jsp";
	}
	@RequestMapping("board_insert_ok.do")
	public String board_insert_ok(HttpServletRequest req)
	throws Exception
	{
		/*req.setCharacterEncoding("EUC-KR");
		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");
		boardVO vo=new boardVO();
		vo.setName(name);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setPwd(pwd);
		boardDAO.boardInsert(vo);*/
		return "user/board/board_insert_ok.jsp";
	}
	@RequestMapping("board_update.do")
	public String boardUpdate(HttpServletRequest req)
	{
		/*String no=req.getParameter("no");
		String page=req.getParameter("page");
		boardVO vo=boardDAO.boardUpdate(Integer.parseInt(no));
		req.setAttribute("vo",vo);
		req.setAttribute("page", page);
		req.setAttribute("jsp", "board/board_update.jsp");*/
		return "user/main.jsp";
	}
	@RequestMapping("board_update_ok.do")
	public String boardUpdateOk(HttpServletRequest req)
	throws Exception
	{
		/*req.setCharacterEncoding("EUC-KR");
		String no=req.getParameter("no");
		String page=req.getParameter("page");
		String name=req.getParameter("name");
		String sub=req.getParameter("subject");
		String cont=req.getParameter("content");
		String pwd=req.getParameter("pwd");
		boardVO vo=new boardVO();
		vo.setNo(Integer.parseInt(no));
		vo.setName(name);
		vo.setSubject(sub);
		vo.setContent(cont);
		vo.setPwd(pwd);
		
		//DB¿¬µ¿
		boolean bCheck=boardDAO.boardUpdateOk(vo);
		req.setAttribute("bCheck", bCheck);
		req.setAttribute("no", no);
		req.setAttribute("page", page);*/
		return "user/board/board_update_ok.jsp";
	}
}


















