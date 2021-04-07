package br.edu.infnet.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.model.negocio.Solicitante;

@Repository
public interface ISolicitanteRepository extends CrudRepository<Solicitante, Integer>{
	
	@Query("from Solicitante s where s.usuario.id=:id")
	List<Solicitante>obterLista(Integer id, Sort by);
	
}