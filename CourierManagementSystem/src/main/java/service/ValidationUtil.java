	package service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;


public class ValidationUtil {
	private static final ValidationUtil instance = new ValidationUtil();
	private Validator validator;

	private ValidationUtil() {
		ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
		 this.validator = validatorFactory.getValidator();

	}

	public static ValidationUtil getInstance() {
		return instance;
	}


	public <T> Map<String, String> validate(T object) {
		
		Map<String, String> errors = new HashMap<>();
		Set<ConstraintViolation<T>> violations = validator.validate(object);
		for (ConstraintViolation<T> violation : violations) {
			String path = violation.getPropertyPath().toString();
			if (errors.containsKey(path)) {
				String errorMsg = errors.get(path);
				errors.put(path, errorMsg + "<br/>" + violation.getMessage());
			} else {
				errors.put(path, violation.getMessage());
			}
		}
		
		return errors;

	}
}
