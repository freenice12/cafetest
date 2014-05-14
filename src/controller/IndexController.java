package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import logic.Item_VO;
import logic.Member_VO;
import logic.Shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import utils.WebConstants;

public class IndexController {
	@Autowired
	private Shop shopService;
	
	@RequestMapping
	public ModelAndView index(HttpSession session){
		// 상품 목록 정보를 취득
		List<Item_VO> itemList = this.shopService.getItemList();
		
		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("itemList", itemList);
		
		// 반환값이 될 ModelAndView 인스턴스 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);
		
		// 1. 로그인 상태로 이동
		Member_VO loginUser = (Member_VO) session.getAttribute(WebConstants.USER_KEY);
		if(loginUser != null){
			modelAndView.addObject("loginUser",loginUser);
		}
		return modelAndView;
	}
}
