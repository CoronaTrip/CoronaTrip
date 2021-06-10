<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col">
			<h1>Nome: ${viagemDTO.getNome()}</h1>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<p>Descrição: ${viagemDTO.getDescricao()}</p>
		</div>
	</div>

	<div class="row">
		<h2>Informações</h2>
		<div class="col">
			<p>Alimentação Incluso: ${viagemDTO.getIncluso()}</p>
		</div>
		<div class="col">
			<p>Valor da diária: R$ ${viagemDTO.getValor()}</p>
		</div>
		<div class="col">
			<p>Custo médio da alimentação: R$ ${viagemDTO.getCusto()}</p>
		</div>
	</div>

	<div class="row">
		<h2>Informações de Contato</h2>
		<div class="col">
			<p>Email: ${viagemDTO.getEmail()}</p>
		</div>
		<div class="col">
			<p>Telefone: ${viagemDTO.getTelefone()}</p>
		</div>
	</div>

	<div class="row">
		<h2>Endereço</h2>
		<div class="col">
			<p>CEP: ${viagemDTO.getCep()}</p>
		</div>
		<div class="col">
			<p>Estado: ${viagemDTO.getEstado()}</p>
		</div>
		<div class="col">
			<p>Cidade: ${viagemDTO.getCidade()}</p>
		</div>
		<div class="col">
			<p>Endereço: ${viagemDTO.getEndereco()}</p>
		</div>
		<div class="col">
			<p>Bairro: ${viagemDTO.getBairro()}</p>
		</div>
		<div class="col">
			<p>Lote: ${viagemDTO.getLote()}</p>
		</div>
	</div>

	<div class="row text-center text-lg-left">
		<h2>Galeria de Fotos</h2>
		<div class="col-lg-3 col-md-4 col-6">
			<img class="img-fluid img-thumbnail"
				src="img/upload/${viagemDTO.getFt01()}"
				style="width: 300px; height: 250px;" alt="">
		</div>
		<div class="col-lg-3 col-md-4 col-6">
			<img class="img-fluid img-thumbnail"
				src="img/upload/${viagemDTO.getFt02()}"
				style="width: 300px; height: 250px;" alt="">
		</div>
		<div class="col-lg-3 col-md-4 col-6">
			<img class="img-fluid img-thumbnail"
				src="img/upload/${viagemDTO.getFt03()}"
				style="width: 300px; height: 250px;" alt="">
		</div>
		<div class="col-lg-3 col-md-4 col-6">
			<img class="img-fluid img-thumbnail"
				src="img/upload/${viagemDTO.getFt04()}"
				style="width: 300px; height: 250px;" alt="">
		</div>
	</div>
</div>
<!-- /.container -->
<jsp:include page="footer.html"></jsp:include>