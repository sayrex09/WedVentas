package com.sayrex.model;

import java.sql.Timestamp;

public class Usuario {
    private int idUsuario;
    private String nombre;
    private String correo;
    private String contrasenaHash;
    private String fotoPerfil;
    private Timestamp fechaRegistro;
    private Timestamp fechaActualizacion;
    private String estado;

    //getters and setters
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getContrasenaHash() {
        return contrasenaHash;
    }
    public void setContrasenaHash(String contrasenaHash) {
        this.contrasenaHash = contrasenaHash;
    }
    public String getFotoPerfil() {
        return fotoPerfil;
    }
    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }
    public Timestamp getFechaRegistro() {
        return fechaRegistro;
    }
    public void setFechaRegistro(Timestamp fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }
    public Timestamp getFechaActualizacion() {
        return fechaActualizacion;
    }
    public void setFechaActualizacion(Timestamp fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
}
