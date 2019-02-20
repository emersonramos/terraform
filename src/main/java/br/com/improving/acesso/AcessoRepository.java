package br.com.improving.acesso;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public interface AcessoRepository extends CrudRepository<Acesso, Long> {

}
