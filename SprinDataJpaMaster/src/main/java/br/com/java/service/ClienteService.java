package br.com.java.service;



import java.util.List;

import br.com.java.entity.Cliente;
import br.com.java.exception.ResourceNotFoundException;

public interface ClienteService {
	
	public List <Cliente> getClientes();
	public void salvarCliente(Cliente cliente);
	public Cliente getCliente (int theId) throws ResourceNotFoundException;
	public void deleteCliente (int theId) throws ResourceNotFoundException;
	

}
