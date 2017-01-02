package com.hb.star.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.star.model.HistoryDao;
import com.hb.star.model.HistoryVo;
import com.hb.star.model.MenuDao;
import com.hb.star.model.OrderDao;
import com.hb.star.model.OrderVo;
import com.hb.star.model.UserDao;
import com.hb.star.model.UserVo;

@Controller
@RequestMapping("/history")
public class HistoryController {

	@Autowired
	private SqlSession sqlSession;
	
	//히스토리 페이지
	@RequestMapping(value="/historypage")
	public String orderpage(Model model){
		HistoryDao mapper = sqlSession.getMapper(HistoryDao.class);
		List list = mapper.selectAll();
		model.addAttribute("alist", list);
		return "/history/historypage";
	}
	
	@RequestMapping(value="/historydel")
	public String historydel(Model model,@RequestParam("no") int no){
		System.out.println(no);
		HistoryDao mapper = sqlSession.getMapper(HistoryDao.class);
		mapper.deleteOne(no);
		
		List list = mapper.selectAll();
		model.addAttribute("alist", list);
		return "redirect:/history/historypage";
	}
}
