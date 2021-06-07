<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">

	<h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Thumbnail
		Gallery</h1>

	<hr class="mt-2 mb-5">

	<div class="row text-center text-lg-left">
		<c:forEach items="${listaViagens}" var="viagens">
			<div class="col-lg-3 col-md-4 col-6">
				<a href="Controller?acao=filter&id=${viagens.getId()}&method=get" class="d-block mb-4 h-100">
					<figure>
						<img class="img-fluid img-thumbnail"
							src="img/upload/${viagens.getFt01()}" style="width: 200px" alt="">
					</figure>
					<p>${viagens.getCidade()}</p>
				</a>
			</div>
		</c:forEach>
	</div>

</div>
<jsp:include page="footer.html"></jsp:include>