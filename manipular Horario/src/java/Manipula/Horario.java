/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manipula;

/**
 *
 * @author Fatec
 */
public class Horario {
    private int hora;
    private int minuto;
    private int segundo;

    public String getRelogio() {
        return hora + "/" + minuto + "/" + segundo;
    }
    
    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }
    
}
