package com.sayrex.model;

import java.sql.Timestamp;

public class MetodoPago {
    private int idMetodo;
    private String nombreMetodo;
    private String detalles;
    private String estado;
    private Timestamp fechaCreacion;

    //getters and setters
    public int getIdMetodo() {
        return idMetodo;
    }
    public void setIdMetodo(int idMetodo) {
        this.idMetodo = idMetodo;
    }
    public String getNombreMetodo() {
        return nombreMetodo;
    }
    public void setNombreMetodo(String nombreMetodo) {
        this.nombreMetodo = nombreMetodo;
    }
    public String getDetalles() {
        return detalles;
    }
    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Timestamp getFechaCreacion() {
        return fechaCreacion;
    }
    public void setFechaCreacion(Timestamp fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
}
