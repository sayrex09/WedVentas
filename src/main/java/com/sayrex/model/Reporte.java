package com.sayrex.model;

import java.sql.Timestamp;

public class Reporte {
    private int idReporte;
    private int idUsuario;
    private int idProyecto;
    private String tipo;
    private String descripcion;
    private String estado;
    private Timestamp fechaReporte;

    //setters y getters
    public int getIdReporte() {
        return idReporte;
    }
    public void setIdReporte(int idReporte) {
        this.idReporte = idReporte;
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
    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Timestamp getFechaReporte() {
        return fechaReporte;
    }
    public void setFechaReporte(Timestamp fechaReporte) {
        this.fechaReporte = fechaReporte;
    }
}
