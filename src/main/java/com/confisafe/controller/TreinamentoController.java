package com.confisafe.controller;

import com.confisafe.model.Treinamento;
import com.confisafe.repository.TreinamentoRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/treinamentos")
public class TreinamentoController {

    private final TreinamentoRepository repository;

    public TreinamentoController(TreinamentoRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public List<Treinamento> getAll() {
        return repository.findAll();
    }
}
