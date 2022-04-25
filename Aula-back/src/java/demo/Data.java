/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

/**
 *
 * @author Fatec
 *
 * Classe didatica para utilizar para manipular data
 */
public class Data {

    /**
     * Atributo para armazenar o dia de uma data
     */
    private int dia;
    private int mes;
    private int ano;
    //Construtores

    public Data() {
        dia = 1;
        mes = 1;
        ano = 2000;
    }

    public Data(int dia, int mes, int ano) {//parametros
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    public void setData(int dia, int mes, int ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

//Metodo de retorno de data formatada
    public String getData() {
        return dia + "/" + mes + "/" + ano;
    }

    public String getAniversario() {
        return dia + "/" + mes;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

}
