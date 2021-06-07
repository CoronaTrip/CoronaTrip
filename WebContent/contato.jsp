<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-6 pb-5">
			<!--Form with header-->
			<form action="Controller" method="post">
			
			<input type="hidden" name="acao" value="email">
				<div class="card border-primary rounded-0">
					<div class="card-header p-0">
						<div class="bg-dark text-white text-center py-2">
							<h3>
								<i class="fa fa-envelope"></i> Fale Conosco
							</h3>
						</div>
					</div>
					<div class="card-body p-3">

						<!--Body-->
						<div class="form-group">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-user text-info"></i>
									</div>
								</div>
								<input type="text" class="form-control" id="nombre"
									name="nome" placeholder="Nome" required>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-envelope text-info"></i>
									</div>
								</div>
								<input type="email" class="form-control" id="nombre"
									name="email" placeholder="Digite o seu E-mail" required>
							</div>
						</div>

						<div class="form-group">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-comment text-info"></i>
									</div>
								</div>
								<textarea name="mensagem" class="form-control" placeholder="Escreva Sua Mensagem"
									required></textarea>
							</div>
						</div>

						<div class="text-center">
							<input type="submit"
								class="btn btn-dark btn-block rounded-0 py-2">
						</div>
					</div>

				</div>
			</form>
			<!--Form with header-->
		</div>
	</div>
</div>
<jsp:include page="footer.html"></jsp:include>