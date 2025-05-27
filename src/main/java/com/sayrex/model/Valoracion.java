package com.sayrex.model;

import java.sql.Timestamp;

public class Valoracion {
    private int idValoracion;
    private int idUsuario;
    private int idProyecto;
    private int puntuacion;
    private String comentario;
    private Timestamp fechaValoracion;

    //getters and setters
    public int getIdValoracion() {
        return idValoracion;
    }
    public void setIdValoracion(int idValoracion) {
        this.idValoracion = idValoracion;
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
    public int getPuntuacion() {
        return puntuacion;
    }
    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }
    public String getComentario() {
        return comentario;
    }
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    public Timestamp getFechaValoracion() {
        return fechaValoracion;
    }
    public void setFechaValoracion(Timestamp fechaValoracion) {
        this.fechaValoracion = fechaValoracion;
    }
}
