<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/templates/tags/taglib.jsp" %>
<div class="clearfix main_content floatleft">
	<div class="clearfix content">
	<c:if test="${landDTO ne null}">
		<h1>${landDTO.lname}</h1>
		<div class="clearfix post-meta">
			<p><span><i class="fa fa-clock-o"></i>Địa chỉ : ${landDTO.address}</span> 
			<span><i class="fa fa-folder"></i>Diện tích : ${landDTO.area}m2</span>
			<span><i class="fa fa-folder"></i>Lượt xem : ${landDTO.countViews}</span></p>
		</div>
		<div class="vnecontent">
			<p>${landDTO.description}</p>
		</div>
	</c:if>
	</div>
		<div class="more_themes">
			<h2>Bất động sản liên quan <i class="fa fa-thumbs-o-up"></i></h2>
			<div class="more_themes_container">
				<c:choose>
					<c:when test="${not empty landRelated}">
						<c:forEach items="${landRelated}" var="related">
							<div class="single_more_themes floatleft">
								<img src="${pageContext.request.contextPath}/resources/uploads/${related.picture}" alt=""/>
								<a href="${pageContext.request.contextPath}/single/${related.lid}"><h2>${related.lname}</h2></a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p style="background-color:powderblue;">Không có tin liên quan !</p>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
</div>
