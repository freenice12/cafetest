package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.Item_VO;
import logic.Shop;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ItemController implements Controller{
	private Shop shopService;
	public void setShopService(Shop shopService){
		this.shopService = shopService;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		List<Item_VO> itemList = this.shopService.getItemList();
		// TODO Auto-generated method stub
		
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("itemList",itemList);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("WEB-INF/jsp/index.jsp");
		modelAndView.addAllObjects(model);
		
		
		return modelAndView;
	}

}
