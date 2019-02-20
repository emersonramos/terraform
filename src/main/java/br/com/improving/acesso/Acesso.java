package br.com.improving.acesso;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "acessos")
public class Acesso {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "acessos_seq")
    @SequenceGenerator(name = "acessos_seq", sequenceName = "acessos_seq", allocationSize = 1)
    private Long id;

    @Column(name = "data_hora", nullable = false)
    private LocalDateTime dataHora;

    public Acesso() {
        this.dataHora = LocalDateTime.now();
    }

    public LocalDateTime getDataHora() {
        return this.dataHora;
    }
}
