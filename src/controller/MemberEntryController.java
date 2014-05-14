package controller;

import javax.servlet.http.HttpSession;

import logic.Member_VO;
import logic.Shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import utils.MemberEntryValidator;
import utils.WebConstants;


@Controller
public class MemberEntryController {
	
	@Autowired
	private Shop shopService;
	
	@Autowired
	private MemberEntryValidator memberEntryValidator;
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(method=RequestMethod.GET)
	public String toMemberEntryView(){
		return "memberForm/memberEntry";
	}
	
	@ModelAttribute
	public Member_VO setUpForm(){
		Member_VO member = new Member_VO();
		MessageSourceAccessor accessor = new MessageSourceAccessor(this.messageSource);
		member.setUserEmail(accessor.getMessage("member.userEmail.default"));
		member.setUserAlias(accessor.getMessage("member.userAlias.default"));
		return member;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView onSubmit(Member_VO member, BindingResult bindingResult , HttpSession session) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		if(bindingResult.hasErrors()){
			modelAndView.getModel().putAll(bindingResult.getModel());
			return modelAndView;
		}
		try{
			this.shopService.entryMember(member);
			session.setAttribute(WebConstants.USER_KEY, member);
			if(this.shopService.getCart()==null){
				session.setAttribute(WebConstants.CART_KEY, this.shopService.getCart());
			}
			modelAndView.setViewName("memberForm/memberEntrySuccess");
			modelAndView.addObject("member", member);
			return modelAndView;

		}
		catch(DataIntegrityViolationException e){
			//유저 ID 중복 시, 폼을 송신한 곳으로 이동
			bindingResult.reject("error.duplicate.member");
			modelAndView.getModel().putAll(bindingResult.getModel());
			return modelAndView;
		}
	}

}
