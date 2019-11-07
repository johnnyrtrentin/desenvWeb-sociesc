package model;

public class Contato {
	private int id;
	private String telefone;
	private String nome;
	private String sobrenome;
	private String email;
	private String senha;

	public Contato() {
		ContatoRepository repositorio = new ContatoRepository();
		this.setId(repositorio.getContatos().size() + 1);
	}

	public int getId() {
		return id;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
