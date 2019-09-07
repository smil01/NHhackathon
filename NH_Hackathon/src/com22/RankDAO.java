package com22;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Util.DBproperty;

public class RankDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static RankDAO dao;

	public static RankDAO getDao() {
		if (dao == null) {
			dao = new RankDAO();
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

	public ArrayList<RankDTO> selectAll() {
		ArrayList<RankDTO> list = new ArrayList<RankDTO>();
		try {
			getCon();

			String sql = "SELECT PHONE, AVG(LV), SUM(COUNT) FROM PROBLEMS GROUP BY PHONE HAVING SUM(COUNT) > 0 ORDER BY SUM(COUNT) DESC";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				list.add(new RankDTO(rs.getString(1), rs.getInt(2), rs.getInt(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return selectWriter(list);
	}
	
	public ArrayList<RankDTO> selectAll2() {
		ArrayList<RankDTO> list = new ArrayList<RankDTO>();
		try {
			getCon();

			String sql = "SELECT PHONE, SUM(LV), SUM(COUNT) FROM PROBLEMS GROUP BY PHONE HAVING SUM(COUNT) = 0 ORDER BY SUM(LV) DESC";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				list.add(new RankDTO(rs.getString(1), rs.getInt(2), rs.getInt(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return selectWriter(list);
	}
	
	public ArrayList<RankDTO> selectWriter(ArrayList<RankDTO> list) {
		for(int i = 0; i < list.size(); i++) {
			try {
				getCon();
				
				String sql = "SELECT WRITER FROM PROBLEMS WHERE PHONE = ? AND ROWNUM <= 1";
				
				pst = conn.prepareStatement(sql);
				pst.setString(1, list.get(i).getPhone());
				
				rs = pst.executeQuery();
				
				while (rs.next()) {
					list.get(i).setWriter(rs.getString(1));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}

		return list;
	}

}
