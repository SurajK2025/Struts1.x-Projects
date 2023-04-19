<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<h1>Employee Registration Form</h1>

<html:form action="reg" method="post">
	<table>
		<tr>
			<td>ID:</td>
			<td><html:text property="id" /></td>
			<td><html:errors property="id_error" /></td>
		</tr>
		<tr>
			<td>Name:</td>
			<td><html:text property="name" /></td>
			<td><html:errors property="name_error" /></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><html:text property="email" /></td>
			<td><html:errors property="email_error" /></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td></td>
			<td><html:errors property="gender_error" /></td>
		</tr>
		<tr>
			<td>Male<html:radio property="gender" value="Male" /></td>
			<td>Female<html:radio property="gender" value="Female" /></td>
			<td></td>
		</tr>
		<tr>
			<td>Hobbies:</td>
			<td></td>
			<td><html:errors property="hobbies_error" /></td>
		</tr>
		<tr>
			<td>Hobbie1<html:checkbox property="hobbies" value="hobbie1" /></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>Hobbie2<html:checkbox property="hobbies" value="hobbie2" /></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>Hobbie3<html:checkbox property="hobbies" value="hobbie3" /></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td><html:submit value="Register" /></td>
			<td></td>
		</tr>
	</table>
</html:form>