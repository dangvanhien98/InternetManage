<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-primary">Danh sách dịch vụ</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#DichVuModal" id="addDichVuBtn">Add</button>
                </div>
            </div>
            <p></p>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover" id="dataTable">
                        <thead>
                            <tr>
                                <th scope="col">Mã Dịch Vụ</th>
                                <th scope="col">Tên Dịch Vụ</th>
                                <th scope="col">Đơn Vị Tính</th>
                                <th scope="col">Đơn Giá</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${dsDichVu}" var="item">
                                <tr>
                                    <th scope="row">${item.getMaDV() }</th>
                                    <td>${item.getTenDV() }</td>
                                    <td>${item.getDonViTinh() }</td>
                                    <td>${item.getDonGia() }</td>
                                    <td><button type="button" class="btn btn-outline-info editBtn" data-toggle="modal" data-target="#DichVuModal" id="editDichVuBtn">Edit</button>
                                        <button type="button" class="btn btn-outline-info" data-toggle="" data-target="" id="deleteBtn">Delete</button>
                                        <button type="button" class="btn btn-outline-info dangKyDVBtn" data-toggle="modal" data-target="#suDungDVModal" id="dangKyDVBtn">Đăng
								Kí Sử Dụng Dịch Vụ</button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- form DichVu Modal -->
                    <div class="modal fade" id="DichVuModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="DichVuModalLabel"></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="" modelAttribute="dichvu" id="formDichVu">
                                        <div class="form-group">
                                            <form:label path="MaDV">Mã Dịch Vụ: </form:label>
                                            <form:input class="form-control" path="MaDV" name="MaDV" id="MaDV" />
                                            <p id="MaDV-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="TenDV">Tên Dịch Vụ: </form:label>
                                            <form:input class="form-control" path="TenDV" name="TenDV" id="TenDV" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="DonViTinh">Đơn Vị Tính: </form:label>
                                            <form:input class="form-control" path="DonViTinh" name="DonViTinh" id="DonViTinh" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="DonGia">Đơn Giá: </form:label>
                                            <form:input class="form-control" path="DonGia" name="DonGia" id="DonGia" />
                                            <p id="DonGia-Error" style="color: red;"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" type="button" name="Save" id="SaveDV">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end form DichVu Modal -->
                    <!-- form Đăng kí sử dụng Dịch Vụ Modal -->
                    <div class="modal fade" id="suDungDVModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel">Đăng kí sử dụng Dịch Vụ</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="dksdDichVu" modelAttribute="sudungdichvu" id="formDksdDV">
                                        <div class="form-group">
                                            <form:label path="MaDV">Mã Dịch Vụ: </form:label>
                                            <form:select class="form-control" path="MaDV" name="MaDV">
                                                <c:forEach items="${dsDichVu }" var="item">
                                                    <form:option value="${item.getMaDV() }"></form:option>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="MaKH">Mã Khách Hàng: </form:label>
                                            <form:select class="form-control" path="MaKH" name="MaKH">
                                                <c:forEach items="${dsKhachHang }" var="item">
                                                    <form:option value="${item.getMaKH() }"></form:option>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="NgaySuDung">Ngày Sử Dụng: </form:label>
                                            <form:input class="form-control" type="date" path="NgaySuDung" name="NgaySuDung" id="NgaySuDung" />
                                            <p id="NgaySuDung-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="GioSuDung">Giờ Sử Dụng: </form:label>
                                            <form:input class="form-control" path="GioSuDung" name="GioSuDung" id="GioSuDung" />
                                            <p id="GioSuDung-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="SoLuong">Số Lượng: </form:label>
                                            <form:input class="form-control" path="SoLuong" name="SoLuong" id="SoLuong" />
                                            <p id="SoLuong-Error" style="color: red;"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" type="button" name="Save" id="SaveSDDV">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end form Đăng kí sử dụng Dịch Vụ Modal -->
                </div>
            </div>