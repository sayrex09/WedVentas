package com.sayrex.model;

import java.sql.Timestamp;

public class ActividadUsuario {
    private int idActividad;
    private int idUsuario;
    private String accion;
    private String descripcion;
    private Timestamp fecha;

    //getters and setters
    public int getIdActividad() {
        return idActividad;
    }
    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public String getAccion() {
        return accion;
    }
    public void setAccion(String accion) {
        this.accion = accion;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Timestamp getFecha() {
        return fecha;
    }
    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }
}
