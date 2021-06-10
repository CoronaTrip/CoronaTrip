
const $campoCep = document.querySelector('[name="cep"]');
const $campoEstado = document.querySelector('[name="estado"]');
const $campoCidade = document.querySelector('[name="cidade"]');
const $campoEndereco = document.querySelector('[name="endereco"]');
const $campoBairro = document.querySelector('[name="bairro"]');

$campoCep.addEventListener("blur", infosDoEvento => {
	const $cep = infosDoEvento.target.value;
	fetch("https://viacep.com.br/ws/" + $cep + "/json/")
		.then(respostaDoServer => {
			return respostaDoServer.json();
		}).then(dadosDoCep => {
			$campoEstado.value = dadosDoCep.uf;
			$campoCidade.value = dadosDoCep.localidade;
			$campoEndereco.value = dadosDoCep.logradouro;
			$campoBairro.value = dadosDoCep.bairro;
		});
});
