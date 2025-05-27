package com.sayrex.dto;

public class UsuarioDTO {
    private int idUsuario;
    private String nombre;
    private String correo;
    private String contrasenaHash;
    private String idRol; // Asumimos que el rol es un String, puede ser un int o enum dependiendo de la implementación

    // Getters y setters
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
    public String getIDRol() {
        return idRol;
    }
    public void setIDRol(String idRol) {
        this.idRol = idRol;
    }
}