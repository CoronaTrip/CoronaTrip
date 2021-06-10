<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="menu.html"></jsp:include>
<div class="container">


	<h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Destinos
		Disponiveis</h1>

	<p id="demo"></p>

	<hr class="mt-2 mb-5">

	<div class="row text-center text-lg-left">
		<c:forEach items="${listaViagens}" var="viagens">
			<div class="col-lg-7">
				<a href="Controller?acao=filter&id=${viagens.getId()}&method=get"
					class="d-block mb-4 h-100">
					<figure>
						<img class="img-fluid img-thumbnail"
							src="img/upload/${viagens.getFt01()}"
							style="width: 500px; height: 300px" alt="">
					</figure>
				</a>
			</div>
			<div class="col-lg-4">
				<h2>Nome: ${viagens.getNome()}</h2>
				<h2>Cidade: ${viagens.getCidade()}</h2>
				<h2>Valor diaria: R$ ${viagens.getValor()}</h2>
				<button onclick="mostrarInfos('${viagens.getEstado()}')">Infos.
					Covid 19</button>
			</div>
			<hr>
		</c:forEach>
	</div>
</div>
<script type="text/javascript">
	
	function mostrarInfos(estado) {
		
			fetch("https://covid19-brazil-api.now.sh/api/report/v1/brazil/uf/" + estado)
				.then(respostaDoServer => {
					return respostaDoServer.json();
				}).then(dadosDaCovid => {
					alert("Id: "+dadosDaCovid.uid+"\n"
						+"UF: "+dadosDaCovid.uf+"\n"
							+"ESTADO: "+dadosDaCovid.state+"\n"
							+"CASOS CONFIRMADOS: "+dadosDaCovid.cases+"\n"
							+"MORTES CONFIRMADAS: "+dadosDaCovid.deaths+"\n"
							+"SUSPEITAS DE COVID: "+dadosDaCovid.suspects+"\n"
							+"ULTIMA ATUALIZAÇÃO: "+dadosDaCovid.datetime
							);
				}); 
			
	}
</script>
<jsp:include page="footer.html"></jsp:include>