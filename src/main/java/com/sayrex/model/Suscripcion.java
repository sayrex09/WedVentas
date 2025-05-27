package com.sayrex.model;

import java.sql.Timestamp;

public class Suscripcion {
    private int idSuscripcion;
    private int idUsuario;
    private int idProyecto;
    private Timestamp fechaSuscripcion;

    //setters and getters
    public int getIdSuscripcion() {
        return idSuscripcion;
    }
    public void setIdSuscripcion(int idSuscripcion) {
        this.idSuscripcion = idSuscripcion;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public int getIdProyecto() {
        return idProyecto;
    }
    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }
    public Timestamp getFechaSuscripcion() {
        return fechaSuscripcion;
    }
    public void setFechaSuscripcion(Timestamp fechaSuscripcion) {
        this.fechaSuscripcion = fechaSuscripcion;
    }
}
