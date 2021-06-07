<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">
	<form class="" action="Controller" method="post" enctype="multipart/form-data">
		<input type="hidden" name="acao" value="create">
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome:
			</label> <input type="text" class="form-control"
				id="nome" name="nome">
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">CEP:
			</label> <input type="text" class="form-control" id="cep" name="cep" />
		</div>
	
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Estado:
			</label> <input type="text" class="form-control" id="estado" name="estado" value=""/>
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Cidade:
			</label> <input type="text" class="form-control" id="cidade" name="cidade" value=""/>
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Endereço (logradouro):
			</label> <input type="text" class="form-control" id="endereco" name="endereco" value=""/>
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Bairro:
			</label> <input type="text" class="form-control" id="bairro" name="bairro" value=""/>
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Lote:
			</label> <input type="text" class="form-control" id="numero" name="lote">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Telefone:
			</label> <input type="text" class="form-control"
				id="telefone" name="telefone">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Email:
			</label> <input type="email" class="form-control"
				id="email" name="email">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Descrição:
			</label>
			<textarea type="text" class="form-control" id="descricao"
				rows="3" name="descricao"></textarea>
		</div>

		<div class="mb-3">
			<label for="formFileMultiple" class="form-label">Upload de
				Imagens: </label> <input class="form-control" type="file"
				id="" multiple="multiple" name="file" >
		</div>

		<div class="mb-3">
			<label>Refeição incluso:</label>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="incluso" id="inlineRadio1" value="sim">
				<label class="form-check-label" for="inlineRadio1">Sim</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="incluso" id="inlineRadio2" value="nao">
				<label class="form-check-label" for="inlineRadio2">Não</label>
			</div>
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Valor
				da diária: R$ </label> <input type="text" class="form-control"
				id="diaria" name="valor">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Custo
				médio da alimentação: R$ </label> <input type="text" class="form-control"
				id="precoAlimentacao" name="custo">
		</div>

		<div class="col-12">
			<button class="btn btn-primary" type="submit">Submit form</button>
		</div>
	</form>
</div>
<jsp:include page="footer.html"></jsp:include>
