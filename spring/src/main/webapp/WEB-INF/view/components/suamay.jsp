<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div>
	<h4>Sửa Máy</h4>
</div>
<div class="modal-body">
	<form:form method="POST" action="saveEdit" modelAttribute="editMay" id="formMay">
		<div class="form-group">
			<form:label path="MaMay">Mã Máy: </form:label>
			<input value="<%=request.getParameter("mamay")%>" name = "MaMay"  readonly="readonly"/>
		</div>
		<div class="form-group">
			<form:label path="ViTri">Vị Trí: </form:label>
			<input  name="ViTri" value="${editMay.getViTri() }"/>
		</div>
		<div class="form-group">
	
			<select id="TrangThai" name="TrangThai">
				<option value="Dang cho su dung">Đang Chờ Sử Dụng</option>
				<option value="dang su dung">Đang Sử Dụng</option>
				<option value="dang sua chua">Đang Sữa Chữa</option>
				<option value="dang hong">Đang Hỏng</option>
			</select>

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			<form:button class="btn btn-primary" name="" id="">Save</form:button>
		</div>
	</form:form>
</div>



