package utils;

import logic.MemberVo;

import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


public class MemberEntryValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberVo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object command, Errors errors) {
		// TODO Auto-generated method stub
		
		MemberVo member = (MemberVo) command;
		
		if(!StringUtils.hasLength(member.getUserEmail())){
			errors.rejectValue("userEmail", "error.required");		//사용자 email 미입력시
		}
		if(!StringUtils.hasLength(member.getUserPasswd())){
			errors.rejectValue("userPasswd", "error.required");		//사용자 password 미입력시
		}
		if(!StringUtils.hasLength(member.getUserAlias())){
			errors.rejectValue("userAlias", "error.required");		//사용자 별명 미입력시
		}
		
		if(!StringUtils.hasText(member.getUserPhone3())){
			errors.rejectValue("userPhone3", "error.required");		//사용자 전화번호 입력 미입력시
		}
		if(!StringUtils.hasText(member.getUserPostcode())){
			errors.rejectValue("userPostcode", "error.required");	//사용자 우편번호 및 기본주소 미입력시
		}
		if(!StringUtils.hasText(member.getUserAddress2())){
			errors.rejectValue("userAddress2", "error.required");	//사용자 상세주소 미입력시
		}
		if(errors.hasErrors()){
			errors.reject("error.input.memberVo");					//전체적인 입력정보 미입력시 경고문
		}
	}
}
