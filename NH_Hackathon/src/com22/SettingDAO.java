package com22;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Util.DBproperty;

public class SettingDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static SettingDAO dao;

	public static SettingDAO getDao() {
		if (dao == null) {
			dao = new SettingDAO();
		}
		return dao;
	}

	private void getCon() {
		try {
			Class.forName(DBproperty.Class);

			conn = DriverManager.getConnection(DBproperty.url, DBproperty.user, DBproperty.password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}

			if (pst != null) {
				pst.close();
			}

			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String[] selectAll() {
		String[] responsibility = new String[10];
		try {
			getCon();

			String sql = "SELECT * FROM setting";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				responsibility[rs.getInt(1) - 1] = rs.getString(2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return responsibility;
	}

	public boolean update(String[] responsibility) {
		for (int i = 0; i < responsibility.length; i++) {
			try {
				getCon();

				String sql = "UPDATE setting SET RESPONSIBILITY = ? WHERE LV = ?";

				pst = conn.prepareStatement(sql);

				pst.setString(1, responsibility[i]);
				pst.setInt(2, i + 1);

				if (pst.executeUpdate() < 0) {
					return false;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}

		return true;
	}
}
