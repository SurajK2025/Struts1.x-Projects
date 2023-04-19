package forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class EmpRegFormBean extends ActionForm {
	private Integer id;
	private String name;
	private String email;
	private String gender;
	private String[] hobbies;
	
	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors ae = new ActionErrors();
		
		if(id == 0) ae.add("id_error", new ActionMessage("id_null_msg"));
		if(name.equals("")) ae.add("name_error", new ActionMessage("name_null_msg"));
		if(email.equals("")) ae.add("email_error", new ActionMessage("email_null_msg"));
		if(gender == null) ae.add("gender_error", new ActionMessage("gender_null_msg"));
		if(hobbies == null) ae.add("hobbies_error", new ActionMessage("hobbies_null_msg"));
		
		return ae;
	}
}