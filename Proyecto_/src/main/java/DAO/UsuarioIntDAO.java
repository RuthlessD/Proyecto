package DAO;

import Modelo.UsuarioInt;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UsuarioIntDAO extends Conexion {

    public ArrayList<UsuarioInt> datosUsuario() throws Exception {
        ArrayList<UsuarioInt> lista = new ArrayList<>();
        try {
            Conectar();
            String query = "SELECT id, nombre, apellido, telefono FROM usuarios";
            PreparedStatement smt = getCnx().prepareStatement(query);
            ResultSet rt = smt.executeQuery();
            while (rt.next()) {
                UsuarioInt u = new UsuarioInt();
                u.setId(rt.getInt("id"));
                u.setNombre(rt.getString("nombre"));
                u.setApellido(rt.getString("apellido"));
                u.setTelefono(rt.getString("telefono"));
                lista.add(u);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Desconectar();
        }
        return lista;
    }
}
