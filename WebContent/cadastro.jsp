<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">

	<div class="alert alert-${tipo}" role="alert">
  		${mensagem}
	</div>
	
	<form class="" action="Controller" method="post" enctype="multipart/form-data">
		<input type="hidden" name="acao" value="create">
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome:
			</label> <input type="text" class="form-control"
				id="nome" name="nome" required="required">
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">CEP:
			</label> <input type="number" class="form-control" id="cep" name="cep" required="required"/>
		</div>
	
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Estado:
			</label> <input type="text" class="form-control" id="estado" name="estado" value="" required="required"/>
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Cidade:
			</label> <input type="text" class="form-control" id="cidade" name="cidade" value="" required="required"/>
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Endereço (logradouro):
			</label> <input type="text" class="form-control" id="endereco" name="endereco" value="" required="required"/>
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Bairro:
			</label> <input type="text" class="form-control" id="bairro" name="bairro" value="" required="required"/>
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Lote:
			</label> <input type="number" class="form-control" id="numero" name="lote" required="required">
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Telefone:
			</label> <input type="tel" pattern="[0-9]{10,11}" class="form-control"
				id="telefone" name="telefone" required="required">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Email:
			</label> <input type="email" class="form-control"
				id="email" name="email" required="required">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Descrição:
			</label>
			<textarea type="text" class="form-control" id="descricao"
				rows="3" name="descricao" required="required"></textarea>
		</div>

		<div class="mb-3">
			<label for="formFileMultiple" class="form-label">Upload de
				Imagens: </label> <input class="form-control" type="file"
				id="" multiple="multiple" name="file" required="required">
		</div>

		<div class="mb-3">
			<label>Refeição incluso:</label>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio"
					name="incluso" id="inlineRadio1" value="sim" required="required">
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
				id="diaria" name="valor" required="required">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Custo
				médio da alimentação: R$ </label> <input type="text" class="form-control"
				id="precoAlimentacao" name="custo" required="required">
		</div>

		<div class="col-12">
			<button class="btn btn-primary" type="submit">Cadastrar</button>
		</div>
	</form>
</div>
<jsp:include page="footer.html"></jsp:include>
