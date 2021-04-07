package br.edu.infnet.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.model.negocio.Locacao;

@Repository
public interface ILocacaoRepository extends CrudRepository<Locacao, Integer>{
	
	@Query("from Locacao l where l.usuario.id=:id")
	List<Locacao>obterLista(Integer id, Sort by);
}