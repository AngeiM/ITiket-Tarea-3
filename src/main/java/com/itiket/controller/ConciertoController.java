/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itiket.controller;

import com.itiket.entity.Concierto;
import com.itiket.entity.Lugar;
import com.itiket.service.IConciertoService;
import com.itiket.service.ILugarService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author User
 */
@Controller
public class ConciertoController {

    @Autowired
    private IConciertoService conciertoService;

    @Autowired
    private ILugarService lugarService;

    @GetMapping("/concierto")
    public String index(Model model) {
        List<Concierto> listaConcierto = conciertoService.getAllConcierto();
        model.addAttribute("tituloVisualizacion", "Acá puedes visualizar los conciertos");
        model.addAttribute("tituloArtistas", "Próximos Conciertos");
        model.addAttribute("concierto", listaConcierto);
        return "concierto";
    }

    @GetMapping("/conciertoN")
    public String crearConcierto(Model model) {
        List<Lugar> listaLugar = lugarService.listLugar();
        model.addAttribute("concierto", new Concierto());
        model.addAttribute("lugar", listaLugar);
        return "crear";
    }
}
