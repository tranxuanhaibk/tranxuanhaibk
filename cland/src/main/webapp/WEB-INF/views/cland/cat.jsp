<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/templates/tags/taglib.jsp"%>
<div class="clearfix main_content floatleft">
			<div class="clearfix content">
				<div class="content_title"><h2>Our Works</h2></div>
				<div class="clearfix single_work_container">
				<c:if test="${not empty listLandDTO}">
					<c:forEach items="${listLandDTO}" var="landDTO">
						<div class="clearfix single_work">
							<img class="img_top" src="${pageContext.request.contextPath}/resources/uploads/${landDTO.picture}" alt=""/>
							<h2>${landDTO.lname}</h2>
							<a href="${pageContext.request.contextPath}/single/${landDTO.lid}"><p class="caption">${landDTO.description}</p></a>
						</div>
					</c:forEach>
				</c:if>
					<div class="clearfix work_pagination">
						<nav>
							<a class="newer floatleft" href=""> < -- Trang trước</a>
							<a class="older floatright" href="">Trang kế -- ></a>
						</nav>
					</div>

				</div>
			</div>
			
		</div>