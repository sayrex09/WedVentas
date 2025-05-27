package com.sayrex.model;

import java.sql.Timestamp;

public class LogSistema {
    private int idLog;
    private String nivel;
    private String mensaje;
    private Timestamp fechaLog;

    //getters and setters
    public int getIdLog() {
        return idLog;
    }
    public void setIdLog(int idLog) {
        this.idLog = idLog;
    }
    public String getNivel() {
        return nivel;
    }
    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    public String getMensaje() {
        return mensaje;
    }
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    public Timestamp getFechaLog() {
        return fechaLog;
    }
    public void setFechaLog(Timestamp fechaLog) {
        this.fechaLog = fechaLog;
    }
}
