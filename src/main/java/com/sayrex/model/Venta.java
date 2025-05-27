package com.sayrex.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Venta {
    private int idVenta;
    private int idComprador;
    private int idProyecto;
    private BigDecimal monto;
    private String estado;
    private int idMetodo;
    private Timestamp fechaVenta;

    // Getters and Setters
    public int getIdVenta() {
        return idVenta;
    }
    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }
    public int getIdComprador() {
        return idComprador;
    }
    public void setIdComprador(int idComprador) {
        this.idComprador = idComprador;
    }
    public int getIdProyecto() {
        return idProyecto;
    }
    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }
    public BigDecimal getMonto() {
        return monto;
    }
    public void setMonto(BigDecimal monto) {
        this.monto = monto;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public int getIdMetodo() {
        return idMetodo;
    }
    public void setIdMetodo(int idMetodo) {
        this.idMetodo = idMetodo;
    }
    public Timestamp getFechaVenta() {
        return fechaVenta;
    }
    public void setFechaVenta(Timestamp fechaVenta) {
        this.fechaVenta = fechaVenta;
    }
}
