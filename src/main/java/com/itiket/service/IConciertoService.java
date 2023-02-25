/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itiket.service;

import com.itiket.entity.Concierto;
import java.util.List;

/**
 *
 * @author User
 */
public interface IConciertoService {
    public List<Concierto> getAllConcierto();
    public Concierto getConciertoId(long id);
    public void saveConcierto(Concierto concierto);
    public void delete (long id);
}
