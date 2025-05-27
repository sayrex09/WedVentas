package com.sayrex.dto;

import java.sql.Timestamp;

public class ProyectosDTO {
    private int idProyecto;
    private String titulo;
    private String descripcion;
    private String lenguajeProgramacion;
    private double precio;
    private boolean gratuito;
    private String archivoUrl;
    private String estado;
    private int idUsuario;
    private Timestamp fechaPublicacion;

    // Getters y setters
    public int getIdProyecto() {
        return idProyecto;
    }
    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getLenguajeProgramacion() {
        return lenguajeProgramacion;
    }
    public void setLenguajeProgramacion(String lenguajeProgramacion) {
        this.lenguajeProgramacion = lenguajeProgramacion;
    }
    public double getPrecio() {
        return precio;
    }
    public void setPrecio(double precio) {
        this.precio = precio;
    }
    public boolean isGratuito() {
        return gratuito;
    }
    public void setGratuito(boolean gratuito) {
        this.gratuito = gratuito;
    }
    public String getArchivoUrl() {
        return archivoUrl;
    }
    public void setArchivoUrl(String archivoUrl) {
        this.archivoUrl = archivoUrl;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public Timestamp getFechaPublicacion() {
        return fechaPublicacion;
    }
    public void setFechaPublicacion(Timestamp fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }
}
