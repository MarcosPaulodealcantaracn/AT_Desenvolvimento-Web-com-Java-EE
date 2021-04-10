package br.edu.infnet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.model.negocio.Solicitante;
import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.service.LocacaoService;
import br.edu.infnet.model.service.SolicitanteService;

@Controller
public class SolicitanteController {
		
	@Autowired
	private SolicitanteService solicitanteService;
	@Autowired
	private LocacaoService locacaoService;

	@GetMapping(value = "/solicitante")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
		model.addAttribute("lista", solicitanteService.obterLista(usuario));
		model.addAttribute("locacao", locacaoService.obterLista());
		
		return "solicitante/detalhe";
	}
	
	@PostMapping(value = "/solicitante/incluir")
	public String incluir(Solicitante solicitante, @SessionAttribute("user") Usuario usuario) {
		
		solicitante.setUsuario(usuario);
		solicitanteService.incluir(solicitante);
		
		return "redirect:/solicitante";
	}
	
	@GetMapping(value = "/solicitante/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		try {
			solicitanteService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("mensagem", "Não é possivel excluir o solicitante" + e.getMessage());
			
			return showDetalhe(model);
		}
		
		return "redirect:/solicitante";
	}

	private String showDetalhe(Model model) {
		return null;
	}
}
