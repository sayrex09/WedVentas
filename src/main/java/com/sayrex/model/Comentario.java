package com.sayrex.model;
import java.sql.Timestamp;

public class Comentario {
    private int idComentario;
    private int idUsuario;
    private int idProyecto;
    private String contenido;
    private Timestamp fechaComentario;

    //getters and setters
    public int getIdComentario() {
        return idComentario;
    }
    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
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
    public String getContenido() {
        return contenido;
    }
    public void setContenido(String contenido) {
        this.contenido = contenido;
    }
    public Timestamp getFechaComentario() {
        return fechaComentario;
    }
    public void setFechaComentario(Timestamp fechaComentario) {
        this.fechaComentario = fechaComentario;
    }

}
