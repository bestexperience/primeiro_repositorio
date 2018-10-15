package br.usjt.ads.best.model.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.usjt.ads.best.model.entity.Status;


public class StatusDAO {
	public ArrayList<Status> listarStatus() throws IOException {
		ArrayList<Status> statusArray = new ArrayList<>();
		String sql = "select id, nome from status order by nome";

		try (Connection conn = ConnectionFactory.getConnection();
				PreparedStatement pst = conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();) {

			while (rs.next()) {
				Status status = new Status();
				status.setId(rs.getInt("id"));
				status.setNome(rs.getString("nome"));
				statusArray.add(status);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}
		return statusArray;
	}
}
