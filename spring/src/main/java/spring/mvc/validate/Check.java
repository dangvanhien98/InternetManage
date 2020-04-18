/*
*
*@Author TL
*@Date 
*/
package spring.mvc.validate;

public class Check {
	public boolean isValidatePhone(String text) {
		String regex = "^(([(]84[)]?[+](90|91)|090|091)+([0-9]{7})\\b)$";
		return text.matches(regex);
	}

	public boolean isValidateEmail(String email) {
		String regex = "^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$";
		return email.matches(regex);
	}

	public boolean isValidateNumber(Integer num) {
		return num > 0;
	}

	public boolean isValidateHhMm(String text) {
		String regex = "^([0-1]?[0-9]|2[0-3]):([0-5][0-9])$";
		return text.matches(regex);
	}

	public boolean isValidateDate(String date) {
		String regex = "^([0-9]{4})[/-](0[0-9]|1[0-2])[/-]([0-2][0-9]|3[0-1])$";
		return date.matches(regex);
	}

	public boolean isValidateMaKH(String text) {
		String regex = "^(KH)[0-9]{5}$";
		return text.matches(regex);
	}

	public boolean isValidateMaDV(String text) {
		String regex = "^(DV)[0-9]{3}$";
		return text.matches(regex);
	}
}
