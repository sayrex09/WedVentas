package com.sayrex.model;

import java.sql.Timestamp;

public class Carrito {
    private int idCarrito;
    private int idUsuario;
    private int idProyecto;
    private Timestamp fechaAgregado;

    //getters and setters
    public int getIdCarrito() {
        return idCarrito;
    }
    public void setIdCarrito(int idCarrito) {
        this.idCarrito = idCarrito;
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
