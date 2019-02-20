package br.com.improving.acesso;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AcessoController {

    @Autowired
    private AcessoService acessoService;

    @GetMapping(value = "/")
    public ResponseEntity<String> getAcessos() {
        return ResponseEntity.ok().body("Acesso numero " + acessoService.registraERetornaQuantidadeAcessos());
    }
}
