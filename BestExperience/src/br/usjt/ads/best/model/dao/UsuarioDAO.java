package br.usjt.ads.best.model.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.usjt.ads.best.model.entity.Usuario;


public class UsuarioDAO {
	public boolean buscarUsuario(Usuario usuario) throws IOException{
		String sql = "select * from usuario where login = ?;";
		
		/*Validação do usuario*/
		int usu = usuario.getLogin();
		String password = usuario.getSenha();
		
		try(Connection conn = ConnectionFactory.getConnection();
				PreparedStatement pst = conn.prepareStatement(sql);){
			pst.setInt(1, usuario.getLogin());
			
			try(ResultSet rs = pst.executeQuery();){
		
				while(rs.next()) {
					usuario.setLogin(rs.getInt("login"));
					usuario.setSenha(rs.getString("senha"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}
		
		if(usu == usuario.getLogin() && password.equals(usuario.getSenha()))
		{
			return true;
		}
		else {
			return false;
		}
	}
}
