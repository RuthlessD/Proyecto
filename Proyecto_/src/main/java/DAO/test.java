package DAO;

import Modelo.UsuarioInt;

import java.util.ArrayList;

public class test {

    public static void main(String[] args) {
        Conexion conexion = new Conexion();

        try {
            conexion.Conectar();
            UsuarioIntDAO UsuarioIntDAO = new UsuarioIntDAO();
            ArrayList<UsuarioInt> usuarios = UsuarioIntDAO.datosUsuario();
            for (UsuarioInt usuario : usuarios) {
                System.out.println("ID: " + usuario.getId());
                System.out.println("Nombre: " + usuario.getNombre());
                System.out.println("Apellido: " + usuario.getApellido());
                System.out.println("Teléfono: " + usuario.getTelefono());
                System.out.println("--------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conexion.Desconectar();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
