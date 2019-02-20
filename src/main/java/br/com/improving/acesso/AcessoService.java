package br.com.improving.acesso;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@Scope("prototype")
public class AcessoService {

    @Autowired
    private AcessoRepository acessoRepository;

    public long registraERetornaQuantidadeAcessos() {

        Acesso acesso = new Acesso();
        acessoRepository.save(acesso);

        return acessoRepository.count();
    }
}
