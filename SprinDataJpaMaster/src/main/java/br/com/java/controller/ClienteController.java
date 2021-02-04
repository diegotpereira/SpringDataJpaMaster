package br.com.java.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.java.entity.Cliente;
import br.com.java.exception.ResourceNotFoundException;
import br.com.java.service.ClienteService;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
private static final Logger LOG = LoggerFactory.getLogger(ClienteController.class);
	
	@Autowired
	private ClienteService service;
	
	@GetMapping("/lista")
	public String showCliente(Model model) {
		List<Cliente> listaClientes = service.getClientes();
		model.addAttribute("clientes", listaClientes);
		return "lista-clientes";
	}
	@GetMapping("/mostrarForm")
	public String mostrarFormAdd (Model model) {
		LOG.debug("método de manipulação de formulário do cliente interno");
		Cliente listaClientes = new Cliente();
		model.addAttribute("cliente", listaClientes);
		return "cliente-form";
	}
	@PostMapping("/salvarCliente")
	public String salvarCliente(@ModelAttribute("cliente") Cliente listaClientes) {
		service.salvarCliente(listaClientes);
		return "redirect:/cliente/lista";
	}
	@GetMapping("/updateForm")
	public String mostrarFormUpdate(@RequestParam("clienteId") int theId, Model model) throws ResourceNotFoundException{
		Cliente cliente = service.getCliente(theId);
		model.addAttribute("cliente", cliente);
		return "cliente-form";
	}
	@GetMapping("/delete")
	public String deleteCliente(@RequestParam("clienteId") int theId) throws ResourceNotFoundException{
		service.deleteCliente(theId);
		return "redirect:/cliente/lista";
	}

}
