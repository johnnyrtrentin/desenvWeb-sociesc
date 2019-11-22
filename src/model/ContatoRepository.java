package model;

import java.util.ArrayList;
import java.util.List;

public class ContatoRepository {

	private static List<Contato> contatos = new ArrayList<>();

	public void Salvar(Contato pContato) {
		contatos.add(pContato);
	}

	public Contato getByID(int pId) {
		for (Contato contato : contatos) {
			if (contato.getId() == pId)
				return contato;
		}

		return null;
	}

	public List<Contato> getContatos() {
		return contatos;

	}

	public void Excluir(int pId) {

		for (Contato contato : contatos) {
			if (contato.getId() == pId) {
				contatos.remove(contato);
				break;
			}
		}
	}
	
	public void Alterar(Contato pContato) {
		for (Contato contato : contatos) {
			if (contato.getId() == pContato.getId()) {
				contato.setNome(pContato.getNome());
				contato.setSobrenome(pContato.getSobrenome());
				contato.setTelefone(pContato.getTelefone());
				contato.setEmail(pContato.getEmail());
				contato.setSenha(pContato.getSenha()); 
			}
		}
	}
	
	public boolean verifyLogin(String em, String pw) {
		for (Contato contato : contatos) {
			if (contato.getEmail().equals(em) && contato.getSenha().equals(pw))
				return true;
		}
		return false;
	}
}
