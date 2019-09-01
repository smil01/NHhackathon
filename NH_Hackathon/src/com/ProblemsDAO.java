package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import Util.DBproperty;

public class ProblemsDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static ProblemsDAO dao;

	public static ProblemsDAO getDao() {
		if (dao == null) {
			dao = new ProblemsDAO();
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

	public boolean insert(ProblemsDTO dto) {
		dto.setState(0);
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월dd일 HH시mm분ss초");
		dto.setTime(format.format(new Date()));
		dto.setRipple("");
		try {
			getCon();

			String sql = "INSERT INTO problems VALUES(PROBLEM_SEQUENCES.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getId());
			pst.setString(2, dto.getWriter());
			pst.setString(3, dto.getNumber());
			pst.setString(4, dto.getEmail());
			pst.setInt(5, dto.getCategory1());
			pst.setInt(6, dto.getCategory2());
			pst.setString(7, dto.getContent());
			pst.setString(8, dto.getTime());
			pst.setInt(9, dto.getState());
			pst.setInt(10, dto.getLv());
			pst.setString(11, dto.getRipple());
			pst.setInt(12, dto.getCount());

			int cnt = pst.executeUpdate();

			if (cnt > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return false;
	}

	public ArrayList<ProblemsDTO> selectAll() {
		ArrayList<ProblemsDTO> list = new ArrayList<ProblemsDTO>();
		try {
			getCon();

			String sql = "SELECT * FROM problems ORDER BY num DESC";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				list.add(new ProblemsDTO(rs.getInt(1), rs.getString(3), rs.getString(2), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public ArrayList<ProblemsDTO> select(String RESPONSIBILITY) {
		ArrayList<ProblemsDTO> list = new ArrayList<ProblemsDTO>();
		try {
			getCon();

			String sql = "SELECT A.* FROM PROBLEMS A, (SELECT LV FROM SETTING WHERE RESPONSIBILITY = ?) B WHERE A.LV = B.LV ORDER BY A.STATE ASC, A.TIME DESC";

			pst = conn.prepareStatement(sql);
			pst.setString(1, RESPONSIBILITY);

			rs = pst.executeQuery();

			while (rs.next()) {
				list.add(new ProblemsDTO(rs.getInt(1), rs.getString(3), rs.getString(2), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public boolean update(ProblemsDTO dto) {
		try {
			getCon();

			String sql = "UPDATE problems SET id = ?, writer = ?, phone = ?, email = ?, CATEGORY1 = ?, CATEGORY2 = ?, CONTENT = ?, TIME = ?, STATE = ?, LV = ?, RIPPLE = ?, COUNT = ? WHERE num = ?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getId());
			pst.setString(2, dto.getWriter());
			pst.setString(3, dto.getNumber());
			pst.setString(4, dto.getEmail());
			pst.setInt(5, dto.getCategory1());
			pst.setInt(6, dto.getCategory2());
			pst.setString(7, dto.getContent());
			pst.setString(8, dto.getTime());
			pst.setInt(9, dto.getState());
			pst.setInt(10, dto.getLv());
			pst.setString(11, dto.getRipple());
			pst.setInt(12, dto.getCount());
			pst.setInt(13, dto.getNum());

			int cnt = pst.executeUpdate();

			if (cnt > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return false;
	}

	public int top() {
		try {
			getCon();

			String sql = "SELECT num FROM problems ORDER BY num DESC";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return 0;
	}
}
