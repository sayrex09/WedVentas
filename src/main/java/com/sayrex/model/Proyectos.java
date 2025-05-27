package com.sayrex.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Proyectos {
    private int idProyecto;
    private String titulo;
    private String descripcion;
    private String lenguajeProgramacion;
    private BigDecimal precio;
    private boolean esgratuito;
    private String archivoUrl;
    private String repositorioUrl;
    private String estado;
    private int idUsuario;
    private Timestamp fechaPublicacion;
    private Timestamp fechaActualizacion;

    //getters and setters
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
    public BigDecimal getPrecio() {
        return precio;
    }
    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }
    public boolean isEsgratuito() {
        return esgratuito;
    }
    public void setEsgratuito(boolean esgratuito) {
        this.esgratuito = esgratuito;
    }
    public String getArchivoUrl() {
        return archivoUrl;
    }
    public void setArchivoUrl(String archivoUrl) {
        this.archivoUrl = archivoUrl;
    }
    public String getRepositorioUrl() {
        return repositorioUrl;
    }
    public void setRepositorioUrl(String repositorioUrl) {
        this.repositorioUrl = repositorioUrl;
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
    public Timestamp getFechaActualizacion() {
        return fechaActualizacion;
    }
    public void setFechaActualizacion(Timestamp fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
}
