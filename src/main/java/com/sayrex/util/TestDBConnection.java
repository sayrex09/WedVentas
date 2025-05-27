package com.sayrex.util;

import java.sql.Connection;

public class TestDBConnection {
    public static void main(String[] args) {
        try (Connection conn = MySQLConexion.getConnection()) {
            if (conn != null) {
                System.out.println("¡Conexión exitosa a la base de datos!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}