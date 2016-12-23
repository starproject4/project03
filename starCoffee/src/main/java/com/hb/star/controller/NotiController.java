package com.hb.star.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.hb.star.model.NotiDao;
import com.hb.star.model.NotiVo;

@Controller
@RequestMapping("/notice")
public class NotiController {
	@Autowired
	private SqlSession sqlSession;
	@RequestMapping("")
	public String notiList(Model model, HttpServletRequest request) {
		NotiDao mapper = sqlSession.getMapper(NotiDao.class);
		List list;	
		String no=request.getParameter("no");
		list=mapper.selectAll();
		double size=list.size();
		int size2=(int)size;
		int listSize=(int)Math.ceil(size/10);
//		System.out.println("size2:"+size2);
//		System.out.println("size:"+size);
//		System.out.println("listSize:"+listSize);
		model.addAttribute("alist", list);
		model.addAttribute("asize", listSize);
		model.addAttribute("size", size2);
		if(no==null){
		}else{
			int no1=Integer.parseInt(no)-1;
			int begin;
			if(no1==0){
				begin=0;
			}else{
				begin=no1*10;
			}
			model.addAttribute("abegin", begin);
		}
		return "/notice/noticeList";
	}
	
	@RequestMapping("/detail")
	public String notiDetail(@RequestParam("idx") int no, @RequestParam("cnt") int cnt, Model model) {
		NotiDao mapper = sqlSession.getMapper(NotiDao.class);
		NotiVo bean = mapper.selectOne(no);
		bean.setCount(bean.getCount()+1);
		System.out.println("count:"+bean.getCount());
		mapper.updateCount(bean);
		model.addAttribute("bean", bean);
		return "/notice/noticeDetail";
	}
	@RequestMapping("/add")
	public String notiAdd() {
		return "/notice/noticeWrite";
	}
	@RequestMapping("/insert")
	public String notiInsert(NotiVo bean) {
		NotiDao mapper = sqlSession.getMapper(NotiDao.class);
		mapper.insertOne(bean);
		System.out.println("입력되었음2");
		return "redirect:";
	}
	@RequestMapping("/update")
	public String notiUpdate(NotiVo bean) {
		NotiDao mapper = sqlSession.getMapper(NotiDao.class);
		mapper.updateOne(bean);
		return "redirect:";
	}
	@RequestMapping("/delete")
	public String notiDelete(@RequestParam("no") int no) {
		System.out.println(no);
		NotiDao mapper = sqlSession.getMapper(NotiDao.class);
		mapper.deleteOne(no);
		return "redirect:";
	}
}
