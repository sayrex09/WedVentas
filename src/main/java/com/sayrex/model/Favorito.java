package com.sayrex.model;

import java.sql.Timestamp;

public class Favorito {
    private int idFavorito;
    private int idUsuario;
    private int idProyecto;
    private Timestamp fechaAgregado;

    //getters and setters
    public int getIdFavorito() {
        return idFavorito;
    }
    public void setIdFavorito(int idFavorito) {
        this.idFavorito = idFavorito;
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
    public Timestamp getFechaAgregado() {
        return fechaAgregado;
    }
    public void setFechaAgregado(Timestamp fechaAgregado) {
        this.fechaAgregado = fechaAgregado;
    }
}
