package br.edu.infnet.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.model.negocio.Locacao;
import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.repository.ILocacaoRepository;

@Service
public class LocacaoService {

	@Autowired
	private ILocacaoRepository locacaoRepository;
	
	public List<Locacao> obterLista(Usuario usuario){
		return (List<Locacao>)locacaoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "embarcacao"));
	}
	
	public List<Locacao> obterLista(){
		return (List<Locacao>)locacaoRepository.findAll();
	}
	
	public void incluir(Locacao locacao){
		locacaoRepository.save(locacao);
	}
	
	public void excluir(Integer id) {
		locacaoRepository.deleteById(id);
	}
}
