package br.com.java.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import br.com.java.entity.Cliente;
import br.com.java.exception.ResourceNotFoundException;
import br.com.java.repository.ClienteRepository;

@Service
public class ClienteServiceImpl implements ClienteService{
	
	@Autowired
	private ClienteRepository repo;

	@Override
	public List<Cliente> getClientes() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void salvarCliente(Cliente cliente) {
		// TODO Auto-generated method stub
		repo.save(cliente);
	}

	@Override
    @Transactional
    public Cliente getCliente(int id) throws ResourceNotFoundException {
//       return repo.findById(id).orElseThrow(() - > new ResourceNotFoundException(id));
       return repo.findById(id).get();
//        return repo.findById(id)
//                .orElseThrow(() -> new ResourceNotFoundException(String.format("Cliente %d not found", id)));
    }

	@Override
	public void deleteCliente(int theId) throws ResourceNotFoundException {
		// TODO Auto-generated method stub
		repo.deleteById(theId);
	}

}
