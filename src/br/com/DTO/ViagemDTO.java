package br.com.DTO;

public class ViagemDTO {
    private int id;
    private String nome;
    private int cep;
    private String estado;
    private String cidade;
    private String endereco;
    private String bairro;
    private int lote;
    private int telefone;
    private String email;
    private String descricao;
    private String incluso;
    private double valor;
    private double custo;
    private String ft01;
    private String ft02;
    private String ft03;
    private String ft04;
    
    public ViagemDTO(String nome, int cep, String estado, String cidade, String endereco, String bairro, int lote,
	    int telefone, String email, String descricao, String incluso, double valor, double custo, String ft01,
	    String ft02, String ft03, String ft04) {
	super();
	this.nome = nome;
	this.cep = cep;
	this.estado = estado;
	this.cidade = cidade;
	this.endereco = endereco;
	this.bairro = bairro;
	this.lote = lote;
	this.telefone = telefone;
	this.email = email;
	this.descricao = descricao;
	this.incluso = incluso;
	this.valor = valor;
	this.custo = custo;
	this.ft01 = ft01;
	this.ft02 = ft02;
	this.ft03 = ft03;
	this.ft04 = ft04;
    }
    public ViagemDTO(int id, String nome, int cep, String estado, String cidade, String endereco, String bairro,
	    int lote, int telefone, String email, String descricao, String incluso, double valor, double custo,
	    String ft01, String ft02, String ft03, String ft04) {
	super();
	this.id = id;
	this.nome = nome;
	this.cep = cep;
	this.estado = estado;
	this.cidade = cidade;
	this.endereco = endereco;
	this.bairro = bairro;
	this.lote = lote;
	this.telefone = telefone;
	this.email = email;
	this.descricao = descricao;
	this.incluso = incluso;
	this.valor = valor;
	this.custo = custo;
	this.ft01 = ft01;
	this.ft02 = ft02;
	this.ft03 = ft03;
	this.ft04 = ft04;
    }
    public int getId() {
        return id;
    }
    public String getNome() {
        return nome;
    }
    public int getCep() {
        return cep;
    }
    public String getEstado() {
        return estado;
    }
    public String getCidade() {
        return cidade;
    }
    public String getEndereco() {
        return endereco;
    }
    public String getBairro() {
        return bairro;
    }
    public int getLote() {
        return lote;
    }
    public int getTelefone() {
        return telefone;
    }
    public String getEmail() {
        return email;
    }
    public String getDescricao() {
        return descricao;
    }
    public String getIncluso() {
        return incluso;
    }
    public double getValor() {
        return valor;
    }
    public double getCusto() {
        return custo;
    }
    public String getFt01() {
        return ft01;
    }
    public String getFt02() {
        return ft02;
    }
    public String getFt03() {
        return ft03;
    }
    public String getFt04() {
        return ft04;
    }
}
