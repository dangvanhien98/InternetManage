<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
        
                    <div >
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel">Đăng kí sử dụng máy</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                     <form:form method="GET" action="sudungMay" modelAttribute="sudungMay">
                                        <div class="form-group">
                                            <form:label path="MaKH">Mã KH: </form:label>
                                            <form:input class="form-control" path="MaKH" name="MaKH" id="MaKH" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="MaMay">Mã Máy: </form:label>
                                           <input name="MaMay" value="<%=request.getParameter("mamay")%>" readonly="readonly">
                                        </div>
                                        <div class="form-group">
                                            <form:label path="NgayBatDauSuDung">Ngày BDSD: </form:label>
                                           <input type="date" name="NgayBatDauSuDung">
                                        </div>
                                         <div class="form-group">
                                            <form:label path="GioBatDauSuDung">Giờ BDSD: </form:label>
                                            <input type="time" name="GioBatDauSuDung">
                                        </div>
                                         <div class="form-group">
                                            <form:label path="ThoiGianSuDung">Thơi Gian SD: </form:label>
                                            <form:input class="form-control" path="ThoiGianSuDung" name="ThoiGianSuDung" id="ThoiGianSuDung" />
                                        </div>
                                        <c:if test="${param['thongbao']}">Đăng Ký Thất Bại</c:if>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" name="" id="">Send</form:button>
                                        </div>
                                    </form:form>                                
                                    </div>
                            </div>
                        </div>
                    </div>
                 
