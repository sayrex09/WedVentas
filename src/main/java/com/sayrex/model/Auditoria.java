package com.sayrex.model;

import java.sql.Timestamp;

public class Auditoria {
    private int idAuditoria;
    private int idUsuario;
    private String accion;
    private String descripcion;
    private Timestamp fecha;

    // Getters and Setters
    public int getIdAuditoria() {
        return idAuditoria;
    }
    public void setIdAuditoria(int idAuditoria) {
        this.idAuditoria = idAuditoria;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public String getAccion() {
        return accion;
    }
    public void setAccion(String accion) {
        this.accion = accion;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Timestamp getFecha() {
        return fecha;
    }
    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }
}
