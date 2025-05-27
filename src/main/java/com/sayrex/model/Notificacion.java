package com.sayrex.model;


import java.sql.Timestamp;

public class Notificacion {
    private int idNotificacion;
    private int idUsuario;
    private String contenido;
    private boolean leido;
    private Timestamp fechaNotificacion;

    //getters and setters
    public int getIdNotificacion() {
        return idNotificacion;
    }
    public void setIdNotificacion(int idNotificacion) {
        this.idNotificacion = idNotificacion;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
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
    public Timestamp getFechaNotificacion() {
        return fechaNotificacion;
    }
    public void setFechaNotificacion(Timestamp fechaNotificacion) {
        this.fechaNotificacion = fechaNotificacion;
    }
}
