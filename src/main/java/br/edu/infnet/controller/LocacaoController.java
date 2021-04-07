package br.edu.infnet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.model.negocio.Locacao;
import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.service.LocacaoService;
import br.edu.infnet.model.service.SolicitanteService;

@Controller
public class LocacaoController {

	@Autowired
	private LocacaoService locacaoService;
	@Autowired
	private SolicitanteService solicitanteService;
	
	@GetMapping(value = "/locacao")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario ) {
		
		model.addAttribute("lista", locacaoService.obterLista(usuario));
		model.addAttribute("solicitantes", solicitanteService.obterLista());
		
		return "locacao/detalhe";
	}
	
	@PostMapping(value = "/locacao/incluir")
	public String incluir(Locacao locacao, @SessionAttribute("user") Usuario usuario) {
		
		locacao.setUsuario(usuario);
		locacaoService.incluir(locacao);
		
		return "redirect:/locacao"; 
	}
	
	@GetMapping(value = "/locacao/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		
		locacaoService.excluir(id);
		
		return "redirect:/locacao";
	}
}