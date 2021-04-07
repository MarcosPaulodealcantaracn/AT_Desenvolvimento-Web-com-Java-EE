package br.edu.infnet.model.negocio;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TUsuario")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nome;
	private String email;
	private String senha;
	private String git;
	
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Locacao> locacao;
	
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Solicitante> solicitante;

	public int getId() {
		return id;
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getGit() {
		return git;
	}

	public void setGit(String git) {
		this.git = git;
	}

	public List<Locacao> getLocacao() {
		return locacao;
	}

	public void setLocacao(List<Locacao> locacao) {
		this.locacao = locacao;
	}

	public List<Solicitante> getSolicitante() {
		return solicitante;
	}

	public void setSolicitante(List<Solicitante> solicitante) {
		this.solicitante = solicitante;
	}
	
	
	
}
