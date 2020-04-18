<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-md-12">
		<h4 class="text-primary">Danh sách dịch vụ</h4>
	</div>
</div>
<p></p>
<div class="row">
	<div class="col-md-12">
		<table class="table table-hover" id="dataTable">
			<thead>
				<tr>
					<th scope="col">Mã Khách Hàng</th>
					<th scope="col">Tên Khách Hàng</th>
					<th scope="col">Mã Máy</th>
					<th scope="col">Vị Trí</th>
					<th scope="col">Trạng Thái</th>
					<th scope="col">Ngày Bắt Đầu Sử Dụng Máy</th>
					<th scope="col">Giờ Bắt Đầu Sử Dụng Máy</th>
					<th scope="col">Thời Gian Sử Dụng Máy</th>
					<th scope="col">Mã Dịch Vụ</th>
					<th scope="col">Ngày Sử Dụng Dịch Vụ</th>
					<th scope="col">Giờ Sử Dụng Dịch Vụ</th>
					<th scope="col">Số Lượng</th>
					<th scope="col">Tổng Tiền</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${dsLietKe}" var="item">
				<tr>
					<th scope="row">${item.getMaKH()}</th>
					<td>${item.getTenKH()}</td>
					<td>${item.getMaMay()}</td>
					<td>${item.getViTri()}</td>
					<td>${item.getTrangThai()}</td>
					<td>${item.getNgayBatDauSuDung()}</td>
					<td>${item.getGioBatDauSuDung()}</td>
					<td>${item.getThoiGianSuDung()}</td>
					<td>${item.getMaDV()}</td>
					<td>${item.getNgaySuDung()}</td>
					<td>${item.getGioSuDung()}</td>
					<td>${item.getSoLuong()}</td>
					<td>${item.getTongTien()}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<h4 style="float:right">Tổng Tiền: <span id="tongtien"></span>$</h4>
	</div>
</div>