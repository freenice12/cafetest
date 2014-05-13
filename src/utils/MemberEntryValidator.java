package utils;

import logic.Member_VO;

import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MemberEntryValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Member_VO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object command, Errors errors) {
		// TODO Auto-generated method stub
		
		Member_VO member = (Member_VO) command;
		
		if(!StringUtils.hasLength(member.getUserEmail())){
			errors.rejectValue("userEmail", "error.required");
		}
		if(!StringUtils.hasLength(member.getUserPasswd())){
			errors.rejectValue("userPasswd", "error.required");
		}
		if(!StringUtils.hasLength(member.getUserAlias())){
			errors.rejectValue("userAlias", "error.required");
		}
		if(!StringUtils.hasText(member.getUserPostcode())){
			errors.rejectValue("userPostcode", "error.required");
		}
		if(!StringUtils.hasText(member.getUserAddress())){
			errors.rejectValue("userAddress", "error.required");
		}
		if(errors.hasErrors()){
			errors.reject("error.input.member");
		}
	}

}
