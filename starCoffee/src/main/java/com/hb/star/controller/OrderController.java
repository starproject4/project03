package com.hb.star.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.star.model.MenuDao;
import com.hb.star.model.OrderDao;
import com.hb.star.model.OrderVo;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private SqlSession sqlSession;
	
	//주문하기 페이지
	@RequestMapping(value="/orderpage")
	public String orderpage(Model model){
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		List list = mapper.selectAll();
		model.addAttribute("alist", list);
		return "/order/orderpage";
	}
	
	@RequestMapping(value="detailorder")
	public String detailorde(@RequestParam("no") int no, Model model){
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		model.addAttribute("bean", mapper.selectOne(no));
		return "/order/detailorder";
	}
	
	@RequestMapping(value="/myCoffeeInsert", method=RequestMethod.POST)
	public void idCk(OrderVo bean){	
		
		OrderDao mapper = sqlSession.getMapper(OrderDao.class);
		mapper.myCoffeeInsert(bean);
		System.out.println(bean);
	}
}
