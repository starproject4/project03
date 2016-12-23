package com.hb.star.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hb.star.model.MenuDao;
import com.hb.star.model.MenuVo;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("")
	public String menuList(Model model) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		List list = mapper.selectAll();
		System.out.println(list.size());
		model.addAttribute("alist", list);
		return "/menu/menuList";
	}
	
	@RequestMapping("/coffee")
	public String menuCoffee(Model model) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		String coffee = "커피";
		List list = mapper.selectCoffee(coffee);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "커피");
		return "/menu/list";
	}
	
	@RequestMapping("/beverage")
	public String menuBeverage(Model model) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		String beverage = "음료";
		List list = mapper.selectCoffee(beverage);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "음료");
		return "/menu/list";
	}
	
	@RequestMapping("/food")
	public String menuFood(Model model) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		String food = "음식";
		List list = mapper.selectCoffee(food);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "음식");
		return "/menu/list";
	}
	
	@RequestMapping("/write")
	public String menuWrite() {
		return "/menu/menuWrite";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String menuInsert(MenuVo bean, @RequestParam("file") MultipartFile file, HttpServletRequest req) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		String rootPath = req.getRealPath("/");
		String attachPath = "resources/imgs/upload/";
		System.out.println("리얼패스:"+req.getRealPath("/"));
		System.out.println("리얼패스:"+file.getOriginalFilename());
		String orgfnm=file.getOriginalFilename();
		String newfnm;
		File f = new File(rootPath+attachPath+orgfnm);
		System.out.println();
		System.out.println("f.exists():"+f.exists());
		if(f.exists()){
			System.out.println("f.exists():있다");
			newfnm=System.currentTimeMillis()+"_"+orgfnm;
			f = new File(rootPath+attachPath+newfnm);
		}else{
			System.out.println("f.exists():없다");
			newfnm=orgfnm;			
		}
		bean.setOriginalfilename(orgfnm);
		bean.setNewfilename(newfnm);
		mapper.insertOne(bean);
		try {
			file.transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.currentTimeMillis();
		System.out.println(bean.getCategory());
		System.out.println(f);
		System.out.println(file);
		return "redirect:/menu";
	}
	
	@RequestMapping("/detail")
	public String menuDetail(@RequestParam("no") int no, Model model){
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		model.addAttribute("bean", mapper.selectOne(no)); 
		return "/menu/menuDetail";
	}
	
	public String menuUpdate(){
		
		return "";
	}
	
	@RequestMapping("/delete")
	public String deleteOne(@RequestParam("no") ArrayList<String> list) {
		MenuDao mapper = sqlSession.getMapper(MenuDao.class);
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i));
			mapper.deleteOne(Integer.parseInt(list.get(i)));
		}
		return "redirect:/menu";
	}
	
}
