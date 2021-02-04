package br.com.java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.java.entity.Cliente;

@Repository ("repo")
public interface ClienteRepository extends JpaRepository<Cliente, Integer>{

}
