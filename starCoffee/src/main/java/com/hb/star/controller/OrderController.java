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
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private SqlSession sqlSession;
	
	//�ֹ��ϱ� ������
	@RequestMapping(value="/orderpage")
	public String orderpage(Model model){
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		List list = mapper.selectAll();
		model.addAttribute("alist", list);
		return "/order/orderpage";
	}
	
	//�ֹ��ϱ� �󼼺���
	@RequestMapping(value="/detailorder")
	public String detailorde(@RequestParam("no") int no, Model model){
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		model.addAttribute("bean", mapper.selectOne(no));
		return "/order/detailorder";
	}
	
	//�����Ǹ޴��� ���
	@RequestMapping(value="/myCoffeeInsert", method=RequestMethod.POST)
	public String idCk(OrderVo bean,@RequestParam("no") int no, Model model){	
		
		OrderDao mapper = sqlSession.getMapper(OrderDao.class);
		mapper.insertMycoffee(bean);
		//System.out.println(bean);
		
		MenuDao mapper2 = sqlSession.getMapper(MenuDao.class);
		model.addAttribute("bean", mapper2.selectOne(no));
		return "/order/ckno";
	}
	
	//�ֹ��ϱ� ������
	@RequestMapping(value="/paypage", method=RequestMethod.POST)
	public String paypage(HttpSession session,OrderVo bean,@RequestParam("cnt") int cnt,Model model){
		
		model.addAttribute("bean", bean);
		model.addAttribute("cnt", cnt);
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.selectOne((String)session.getAttribute("id"));
		model.addAttribute("bean2", result);
		
		return "/order/paypage";
	}
	
	//�����ϱ�
	@RequestMapping(value="/usepoint")
	public void usepoint(Model model,HistoryVo bean2,UserVo bean){
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.updatePoint(bean);
		
		//�����丮 �Է�
		HistoryDao mapper2 = sqlSession.getMapper(HistoryDao.class);
		mapper2.historyInsert(bean2);
	}

	
	//������ �޴� ������
	@RequestMapping(value="/mycoffeepage")
	public String mycoffeepage(Model model){
		OrderDao mapper = sqlSession.getMapper(OrderDao.class);
		List list = mapper.selectAll();
		model.addAttribute("alist", list);
		return "/order/mycoffeepage";
	}
	
	//������ �޴����� �ֹ��ϱ�
	@RequestMapping(value="/mycoffeepay")
	public String mycoffeepay(HttpSession session,OrderVo bean,Model model){
		System.out.println(bean);
		
		model.addAttribute("bean", bean);
		model.addAttribute("cnt", 1);
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.selectOne((String)session.getAttribute("id"));
		model.addAttribute("bean2", result);
		
		return "/order/paypage";
	}
	
	//������ �޴����� �����ϱ�
	@RequestMapping(value="/mycoffeedel")
	public String mycoffeedel(@RequestParam("no") int mypk){
		OrderDao mapper = sqlSession.getMapper(OrderDao.class);
		mapper.deleteMycoffee(mypk);
		
		return "redirect:/order/mycoffeepage";
	}
}
