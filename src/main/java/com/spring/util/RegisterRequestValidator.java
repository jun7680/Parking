package com.spring.util;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;




public class RegisterRequestValidator implements Validator {

	private static final String emailRegExp =
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
            "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
 
    public RegisterRequestValidator() {
        pattern = Pattern.compile(emailRegExp);
    }
 
    @Override
    public boolean supports(Class<?> clazz) {
        return RegisterRequest.class.isAssignableFrom(clazz);
    }
 
    @Override
    public void validate(Object target, Errors errors) {
        RegisterRequest regReq = (RegisterRequest) target;
        
//        if(regReq.getEmail() == null || regReq.getEmail().trim().isEmpty()) {
//            errors.rejectValue("email", "required", "이메일(Email)은 필수 항목입니다..");
//        } else {
//            Matcher matcher = pattern.matcher(regReq.getEmail());
//            if(!matcher.matches()) {
//                errors.rejectValue("email", "bad", "이메일 형식에 맞춰주세요");
//                
//               
//;            }
//        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required", "이름은 필수 항목입니다.");
        ValidationUtils.rejectIfEmpty(errors, "pw", "required", "비밀번호는 필수 항목입니다.");
        ValidationUtils.rejectIfEmpty(errors, "cpw", "required", "비밀번호확인은 필수 항목입니다..");
        if(!regReq.getPw().isEmpty()) {
            if(!regReq.isPwEqualToCheckPw()) {
                errors.rejectValue("cpw", "nomatch", "비밀번호가 일치하지 않습니다.");
            }
        }
    }
 
}
