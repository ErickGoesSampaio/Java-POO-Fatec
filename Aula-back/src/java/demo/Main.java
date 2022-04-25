/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

/**
 *
 * @author Fatec
 */
public class Main {
    public static void main(String[] args) {
        //Exemplo de declaração, instaciação e definição de um objeto
        Data hoje = new Data();
        hoje.setAno(2022);
        hoje.setMes(4);
        hoje.setDia(25);
        System.out.println("Hoje é dia" +hoje.getDia() );

        Data amanha;
        amanha = new Data();
        amanha.setDia(26);
        amanha.setMes(4);
        amanha.setAno(2022);
    }
    
    
}
