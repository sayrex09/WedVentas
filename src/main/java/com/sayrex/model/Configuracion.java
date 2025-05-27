package com.sayrex.model;


public class Configuracion {
    private int idConfiguracion;
    private String clave;
    private String valor;

    //getters and setters
    public int getIdConfiguracion() {
        return idConfiguracion;
    }
    public void setIdConfiguracion(int idConfiguracion) {
        this.idConfiguracion = idConfiguracion;
    }  
    public String getClave() {
        return clave;
    }
    public void setClave(String clave) {
        this.clave = clave;
    }
    public String getValor() {
        return valor;
    }
    public void setValor(String valor) {
        this.valor = valor;
    }
}
