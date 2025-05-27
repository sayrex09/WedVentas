package com.sayrex.model;

import java.sql.Timestamp;

public class Mensaje {
    private int idMensaje;
    private int idRemitente;
    private int idDestinatario;
    private String contenido;
    private boolean leido;
    private Timestamp fechaMensaje;

    //getters and setters
    public int getIdMensaje() {
        return idMensaje;
    }
    public void setIdMensaje(int idMensaje) {
        this.idMensaje = idMensaje;
    }
    public int getIdRemitente() {
        return idRemitente;
    }
    public void setIdRemitente(int idRemitente) {
        this.idRemitente = idRemitente;
    }
    public int getIdDestinatario() {
        return idDestinatario;
    }
    public void setIdDestinatario(int idDestinatario) {
        this.idDestinatario = idDestinatario;
    }
    public String getContenido() {
        return contenido;
    }
    public void setContenido(String contenido) {
        this.contenido = contenido;
    }
    public boolean isLeido() {
        return leido;
    }
    public void setLeido(boolean leido) {
        this.leido = leido;
    }
    public Timestamp getFechaMensaje() {
        return fechaMensaje;
    }
    public void setFechaMensaje(Timestamp fechaMensaje) {
        this.fechaMensaje = fechaMensaje;
    }
}
