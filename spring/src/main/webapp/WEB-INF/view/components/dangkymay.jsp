<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-primary">Danh sách máy đăng ký</h4>
                </div>
            </div>
         	
            <p></p>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover" id="dataTable">
                        <thead>
                            <tr>
                                <th scope="col">Mã Máy</th>
                                <th scope="col">Vị Trí</th>
                                <th scope="col">Trạng thái</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listRegister }" var="item">
                                <tr>
                                    <th scope="row">${item.getMaMay() }</th>
                                    <td>${item.getViTri() }</td>
                                    <td>${item.getTrangThai() }</td>
									<td><a href="sudungMay?mamay=${item.getMaMay() }">Đăng Ký</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    </div>
                </div>
                
                
            
                
                
             
                <%--     <!-- form May Modal -->
                    <div class="modal fade" id="MayModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="MayModalLabel"></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="" modelAttribute="may" id="formMay">
                                        <div class="form-group">
                                            <form:label path="MaMay">Mã Máy: </form:label>
                                            <form:input class="form-control" path="MaMay" name="MaMay" id="MaMay" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="ViTri">Vị Trí: </form:label>
                                            <form:input class="form-control" path="ViTri" name="ViTri" id="ViTri" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="TrangThai">Trạng Thái: </form:label>
                                            <form:input class="form-control" path="TrangThai" name="TrangThai" id="TrangThai" />
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" name="Save" id="SaveMay">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end form May Modal -->
                    <!-- form Đăng kí sử dụng May Modal -->
                    <div class="modal fade" id="suDungMayModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel">Đăng kí sử dụng máy</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="dksdMay" modelAttribute="sudungmay" id="formDksdMay">
                                        <div class="form-group">
                                            <form:label path="MaMay">Mã Máy: </form:label>
                                            <form:select class="form-control" path="MaMay" name="MaMay">
                                                <c:forEach items="${dsMay }" var="item">
                                                    <form:option value="${item.getMaMay() }"></form:option>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="MaKH">Mã Khách Hàng: </form:label>
                                            <form:select class="form-control" path="MaKH" name="MaKH">
                                                <c:forEach items="${dsKH }" var="item">
                                                    <form:option value="${item.getMaKH() }"></form:option>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="NgayBatDauSuDung">Ngày Bắt Đầu Sử Dụng: </form:label>
                                            <form:input class="form-control" type="date" path="NgayBatDauSuDung" name="NgayBatDauSuDung" id="NgayBatDauSuDung" />
                                            <p id="NgayBatDauSuDung-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="GioBatDauSuDung">Giờ Bắt Đầu Sử Dụng: </form:label>
                                            <form:input class="form-control" path="GioBatDauSuDung" name="GioBatDauSuDung" id="GioBatDauSuDung" />
                                            <p id="GioBatDauSuDung-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="ThoiGianSuDung">Thời Gian Sử Dụng: </form:label>
                                            <form:input class="form-control" path="ThoiGianSuDung" name="ThoiGianSuDung" id="ThoiGianSuDung" />
                                            <p id="ThoiGianSuDung-Error" style="color: red;"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" type="button" name="Save" id="SaveSDM">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end form Đăng kí sử dụng May Modal -->
                </div>
            </div> --%>