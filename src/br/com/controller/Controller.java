package br.com.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.com.BO.EnviarEmail;
import br.com.BO.ViagemBO;
import br.com.DTO.ViagemDTO;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
@MultipartConfig
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {

    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	String acao = request.getParameter("acao");
	String msg = "";
	String path = request.getServletContext().getRealPath("/img/upload");
	String[] fotos = { "", "", "", "" };

	switch (acao) {
	case "create":
	    String nome = request.getParameter("nome");
	    int cep = Integer.parseInt(request.getParameter("cep"));
	    String estado = request.getParameter("estado");
	    String cidade = request.getParameter("cidade");
	    String endereco = request.getParameter("endereco");
	    String bairro = request.getParameter("bairro");
	    int lote = Integer.parseInt(request.getParameter("lote"));
	    Integer telefone = Integer.parseInt(request.getParameter("telefone"));
	    String email = request.getParameter("email");
	    String descricao = request.getParameter("descricao");
	    String incluso = request.getParameter("incluso");
	    double valor = Double.parseDouble(request.getParameter("valor"));
	    double custo = Double.parseDouble(request.getParameter("custo"));
	    ViagemBO viagemBO = new ViagemBO();

	    try {
		int i = 0;
		for (Part part : request.getParts()) {
		    if (part.getName().equals("file")) {
			Date dataHoraAtual = new Date();
			String data = new SimpleDateFormat("dd-MM-yyyy").format(dataHoraAtual);
			String hora = new SimpleDateFormat("HH:mm:ss").format(dataHoraAtual);
			part.write(path + File.separator + data + hora + part.getSubmittedFileName());
			fotos[i] = data + hora + part.getSubmittedFileName();
			i++;
		    }
		}
	    } catch (Exception e) {
		msg = "Error ao salvar o arquivo";
	    }
	    viagemBO.addViagem(new ViagemDTO(nome, cep, estado, cidade, endereco, bairro, lote, telefone, email, descricao, incluso, valor, custo, fotos[0], fotos[1], fotos[2], fotos[3]));
	    request.getRequestDispatcher("cadastro.jsp").forward(request, response);
	    break;
	case "filter":

	    ViagemBO viagemBOFilter = new ViagemBO();
	    String id = request.getParameter("id");
	    ViagemDTO viagemDTO = viagemBOFilter.searchById(id);
	    request.setAttribute("viagemDTO", viagemDTO);
	    request.getRequestDispatcher("mostrarviagem.jsp").forward(request, response);
	    break;

	case "list":

	    List<ViagemDTO> listaViagens = new ArrayList<ViagemDTO>();
	    ViagemBO ViagemBOlist = new ViagemBO();
	    listaViagens = ViagemBOlist.getListViagens();
	    request.setAttribute("listaViagens", listaViagens);
	    request.getRequestDispatcher("viagens.jsp").forward(request, response);
	    break;
	
	
	case "email":
		
		 EnviarEmail enviar = new EnviarEmail();
		    enviar.setEmailDestinatario("vicenteferreira369@gmail.com");
		    enviar.setAssunto("Fale Conosco");
		    //uso StringBuffer para otimizar a concatenação 
		    //de string
		    StringBuffer texto = new StringBuffer(); 
		    texto.append("<h2 align='center'>Fale Conosco</h2>");
		    texto.append("Informações Enviadas:<br/>");
		    texto.append("Nome:");
		    texto.append(request.getParameter("nome"));
		    texto.append("<br/>");
		    texto.append("Email Contato: ");
		    texto.append(request.getParameter("email"));
		    texto.append("<br/>");
		    texto.append("Mensagem: ");
		    texto.append(request.getParameter("mensagem"));
		    
		    enviar.setMsg(texto.toString());
		    
		    boolean enviou = enviar.enviarGmail();
		    request.getRequestDispatcher("contato.jsp").forward(request, response);

		break;
	}
    }

}
