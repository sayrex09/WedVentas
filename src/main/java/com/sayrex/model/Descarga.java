package com.sayrex.model;

import java.sql.Timestamp;

public class Descarga {
    private int idDescarga;
    private int idUsuario;
    private int idProyecto;
    private boolean esCompra;
    private Timestamp fechaDescarga;

    //getters and setters
    public int getIdDescarga() {
        return idDescarga;
    }
    public void setIdDescarga(int idDescarga) {
        this.idDescarga = idDescarga;
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
    public boolean isEsCompra() {
        return esCompra;
    }
    public void setEsCompra(boolean esCompra) {
        this.esCompra = esCompra;
    }
    public Timestamp getFechaDescarga() {
        return fechaDescarga;
    }
    public void setFechaDescarga(Timestamp fechaDescarga) {
        this.fechaDescarga = fechaDescarga;
    }
}
