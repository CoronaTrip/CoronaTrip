package br.com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import br.com.DTO.ViagemDTO;
import conexao.ConnectionFactory;

public class ViagemDAO {
    private Connection connection;
    private PreparedStatement ps;
    private Statement st;
    private ResultSet rs;
    List<ViagemDTO> listaViagens = new ArrayList<ViagemDTO>();

    public ViagemDAO() {
	connection = new ConnectionFactory().getConnection();
    }

    public boolean addViagem(ViagemDTO viagemdto) {

	String sql = "INSERT INTO viagens (nome_empresa,cep,estado,cidade,endereco,bairro,lote,telefone,email,descricao,refeicao_incluso,diaria,alimentacao,ft01,ft02,ft03,ft04)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	try {
	    ps = connection.prepareStatement(sql);
	    ps.setString(1, viagemdto.getNome());
	    ps.setInt(2, viagemdto.getCep());
	    ps.setString(3, viagemdto.getEstado());
	    ps.setString(4, viagemdto.getCidade());
	    ps.setString(5, viagemdto.getEndereco());
	    ps.setString(6, viagemdto.getBairro());
	    ps.setInt(7, viagemdto.getLote());
	    ps.setInt(8, viagemdto.getTelefone());
	    ps.setString(9, viagemdto.getEmail());
	    ps.setString(10, viagemdto.getDescricao());
	    ps.setString(11, viagemdto.getIncluso());
	    ps.setDouble(12, viagemdto.getValor());
	    ps.setDouble(13, viagemdto.getCusto());
	    ps.setString(14, viagemdto.getFt01());
	    ps.setString(15, viagemdto.getFt02());
	    ps.setString(16, viagemdto.getFt03());
	    ps.setString(17, viagemdto.getFt04());
	    ps.execute();
	    ps.close();
	    return true;
	} catch (Exception erro) {
	    System.out.println("Erro" + erro);
	}
	return false;
    }

    public ViagemDTO searchById(String id) {
	String sql = "SELECT * FROM viagens where idviagens='" + id + "'";
	try {
	    Statement st = connection.createStatement();
	    ResultSet rs = st.executeQuery(sql);
	    while (rs.next()) {
		ViagemDTO viagemDTO = new ViagemDTO(rs.getInt("idviagens"), rs.getString("nome_empresa"),
			rs.getInt("cep"), rs.getString("estado"), rs.getString("cidade"), rs.getString("endereco"),
			rs.getString("bairro"), rs.getInt("lote"), rs.getInt("telefone"), rs.getString("email"),
			rs.getString("descricao"), rs.getString("refeicao_incluso"), rs.getDouble("diaria"),
			rs.getDouble("alimentacao"), rs.getString("ft01"), rs.getString("ft02"), rs.getString("ft03"),
			rs.getString("ft04"));
		return viagemDTO;
	    }
	} catch (Exception erro) {
	    System.out.println("Erro" + erro);
	}
	return null;
    }

    public List<ViagemDTO> getListViagens() {
	String sql = "SELECT * FROM viagens";

	try {
	    st = connection.createStatement();
	    rs = st.executeQuery(sql);
	    while (rs.next()) {
		listaViagens.add(new ViagemDTO(rs.getInt("idviagens"), rs.getString("nome_empresa"), rs.getInt("cep"),
			rs.getString("estado"), rs.getString("cidade"), rs.getString("endereco"),
			rs.getString("bairro"), rs.getInt("lote"), rs.getInt("telefone"), rs.getString("email"),
			rs.getString("descricao"), rs.getString("refeicao_incluso"), rs.getDouble("diaria"),
			rs.getDouble("alimentacao"), rs.getString("ft01"), rs.getString("ft02"), rs.getString("ft03"),
			rs.getString("ft04")));
	    }
	} catch (Exception erro) {
	    System.out.println("Erro" + erro);
	}
	return listaViagens;
    }
}
