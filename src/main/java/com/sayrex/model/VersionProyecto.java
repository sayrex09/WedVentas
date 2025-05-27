package com.sayrex.model;

import java.sql.Timestamp;

public class VersionProyecto {
    private int idVersion;
    private int idProyecto;
    private String nombreVersion;
    private String descripcion;
    private String archivoUrl;
    private Timestamp fechaPublicacion;

    //getters and setters
    public int getIdVersion() {
        return idVersion;
    }
    public void setIdVersion(int idVersion) {
        this.idVersion = idVersion;
    }
    public int getIdProyecto() {
        return idProyecto;
    }
    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }
    public String getNombreVersion() {
        return nombreVersion;
    }
    public void setNombreVersion(String nombreVersion) {
        this.nombreVersion = nombreVersion;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getArchivoUrl() {
        return archivoUrl;
    }
    public void setArchivoUrl(String archivoUrl) {
        this.archivoUrl = archivoUrl;
    }
    public Timestamp getFechaPublicacion() {
        return fechaPublicacion;
    }
    public void setFechaPublicacion(Timestamp fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }
}
