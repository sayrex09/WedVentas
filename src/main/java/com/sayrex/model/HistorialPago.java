package com.sayrex.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class HistorialPago {
    private int idHistorial;
    private int idUsuario;
    private BigDecimal monto;
    private String metodoPago;
    private Timestamp fechaPago;

    //getters and setters
    public int getIdHistorial() {
        return idHistorial;
    }
    public void setIdHistorial(int idHistorial) {
        this.idHistorial = idHistorial;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public BigDecimal getMonto() {
        return monto;
    }
    public void setMonto(BigDecimal monto) {
        this.monto = monto;
    }
    public String getMetodoPago() {
        return metodoPago;
    }
    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }
    public Timestamp getFechaPago() {
        return fechaPago;
    }
    public void setFechaPago(Timestamp fechaPago) {
        this.fechaPago = fechaPago;
    }
}
