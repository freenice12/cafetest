package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import logic.Postcode;
import logic.PostcodeCatalog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PostcodeController {
	
	@Autowired
	private PostcodeCatalog postcodeCatalog;
	
	@RequestMapping(value="postcode/postcode", method=RequestMethod.GET)
	public void postcodePage(){

	}


	@RequestMapping
	public ModelAndView handleRequestInternal(String eupmyeondong){
		
		System.out.println("어허");
		//입력한 '읍/면/동' 값으로 Postcode List 취득
		List<Postcode> selectedPostcode = this.postcodeCatalog.getPostcodeByEupmyeondong(eupmyeondong);
		
		//모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("postcode", selectedPostcode);
		
		//반환값인 ModelAndView 인스턴스 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);
		
		return modelAndView;
	}

	
}
