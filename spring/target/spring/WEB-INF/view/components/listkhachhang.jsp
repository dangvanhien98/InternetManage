<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

        <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-primary">Danh sách khách hàng</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#KhachHangModal" id="addKhachHangBtn">Add</button>
                </div>
            </div>
            <p></p>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover table-borderless" id="dataTable">
                        <thead>
                            <tr>
                                <th scope="col">Mã Khách Hàng</th>
                                <th scope="col">Tên Khách Hàng</th>
                                <th scope="col">Địa Chỉ</th>
                                <th scope="col">Số Điện Thoại</th>
                                <th scope="col">Địa Chỉ Email</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${dsKhachHang}" var="item">
                                <tr>
                                    <th scope="row">${ item.getMaKH() }</th>
                                    <td>${ item.getTenKH() }</td>
                                    <td>${ item.getDiaChi() }</td>
                                    <td>${ item.getSoDienThoai() }</td>
                                    <td>${ item.getDiaChiEmail() }</td>
                                    <td><button type="button" class="btn btn-outline-info editKhachHangBtn" data-toggle="modal" data-target="#KhachHangModal" id="editKhachHangBtn">Edit</button>
                                        <button type="button" class="btn btn-outline-info" data-toggle="" data-target="" id="deleteBtn">Delete</button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- form KhachHang Modal -->
                    <div class="modal fade" id="KhachHangModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="KhachHangModalLabel"></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
                                </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="" modelAttribute="khachhang" id="formKhachHang">
                                        <div class="form-group">
                                            <form:label path="MaKH">Mã Khách Hàng: </form:label>
                                            <form:input class="form-control" path="MaKH" name="MaKH" id="MaKH" />
                                            <p id="MaKH-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="TenKH">Tên Khách Hàng: </form:label>
                                            <form:input class="form-control" path="TenKH" name="TenKH" id="TenKH" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="DiaChi">Địa Chỉ: </form:label>
                                            <form:input class="form-control" path="DiaChi" name="DiaChi" id="DiaChi" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="SoDienThoai">Số Điện Thoại: </form:label>
                                            <form:input class="form-control" path="SoDienThoai" name="SoDienThoai" id="SoDienThoai" />
                                            <p id="SoDienThoai-Error" style="color: red;"></p>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="DiaChiEmail">Email: </form:label>
                                            <form:input class="form-control" path="DiaChiEmail" name="DiaChiEmail" id="DiaChiEmail" />
                                            <p id="DiaChiEmail-Error" style="color: red;"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <form:button class="btn btn-primary" type="button" name="Save" id="SaveKH">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end form KhachHang Modal -->
                </div>
            </div>