package br.com.BO;

import java.util.List;

import br.com.DAO.ViagemDAO;
import br.com.DTO.ViagemDTO;

public class ViagemBO {
	ViagemDAO viagemDAO = new ViagemDAO();

	public boolean addViagem(ViagemDTO viagemdto) {
		return viagemDAO.addViagem(viagemdto);
	}
	
	public ViagemDTO searchById(String id) {
		return viagemDAO.searchById(id);
	}
	
	public List<ViagemDTO> getListViagens() {
		return viagemDAO.getListViagens();
	}
}
