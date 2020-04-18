<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-primary">Danh sách máy</h4>
                </div>
            </div>
         	<div>
         	<nav class="navbar navbar-expand-lg " id="top_menu">
			<button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#navbarNav">
			  	<i class="fa fa-bars text-white"></i>
			</button>	
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a data-scroll class="nav-link" href="#themmay">Thêm Máy</a>
						</li>
						 <li class="nav-item" >
					        <a class="nav-link" href="dangkyMay">Đăng Ký Máy</a>
					      </li>				
					</ul>
				</div>
				</nav>
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
                      
                            <c:forEach items="${dsMay }" var="item">
                                <tr>
                                
                                    <th scope="row">${item.getMaMay() }</th>
                                    <td>${item.getViTri() }</td>
                                    <td>${item.getTrangThai() }</td>
                                        
                                   	<td><a class="nav-link" href="xoaMay?mamay=${item.getMaMay() }" onclick="Are you sure">Delete</a></td>
                                   	<td><a class="nav-link" href="suaMay?mamay=${item.getMaMay() }">Edit</a></td>
                                   
                                </tr>
                            </c:forEach>
                          
                        </tbody>
                    </table>
                    </div>
                </div>
                
                
                <section id="themmay" class="container">
                <div>
                	<h4>Thêm Máy</h4>
                	               </div>
                                <div class="modal-body">
                                    <form:form method="POST" action="addMay" modelAttribute="addMay" id="formMay">
                                        <div class="form-group">
                                            <form:label path="MaMay">Mã Máy: </form:label>
                                            <form:input class="form-control" path="MaMay" name="MaMay" id="MaMay" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="ViTri">Vị Trí: </form:label>
                                            <form:input class="form-control" path="ViTri" name="ViTri" id="ViTri" />
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
                                            <form:button class="btn btn-primary" name="Save" id="addMay">Send</form:button>
                                        </div>
                                    </form:form>
                                </div>                           
                </section>
                
                
