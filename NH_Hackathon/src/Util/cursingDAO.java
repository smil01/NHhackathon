package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class cursingDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static cursingDAO dao;

	public static cursingDAO getDao() {
		if (dao == null) {
			dao = new cursingDAO();
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
	
	public cursingDTO select(String content) {
		try {
			getCon();

			String sql = "SELECT * FROM cursing WHERE content = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, content);

			rs = pst.executeQuery();

			if (rs.next()) {
				return new cursingDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return null;
	}
	
	public ArrayList<cursingDTO> selectAll() {
		ArrayList<cursingDTO> list = new ArrayList<cursingDTO>();
		try {
			getCon();

			String sql = "SELECT * FROM cursing ORDER BY num DESC";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				if(rs.getString(2)!=null) list.add(new cursingDTO(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public ArrayList<cursingDTO> likeAll(String content) {
		ArrayList<cursingDTO> list = new ArrayList<cursingDTO>();
		try {
			getCon();

			String sql = "SELECT * FROM cursing WHERE content LIKE ? ORDER BY num DESC";

			pst = conn.prepareStatement(sql);
			pst.setString(1,  "%" + content + "%");

			rs = pst.executeQuery();

			while (rs.next()) {
				list.add(new cursingDTO(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public boolean insert(cursingDTO dto) {
		try {
			getCon();

			String sql = "INSERT INTO cursing VALUES(CURSING_SEQUENCE.NEXTVAL, ?, ?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getContent());
			pst.setString(2, dto.getChange());

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
	
	public boolean update(cursingDTO dto) {
		try {
			getCon();

			String sql = "UPDATE cursing SET content = ?, change = ? WHERE num = ?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getContent());
			pst.setString(2, dto.getChange());
			pst.setInt(3, dto.getNum());
			
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

	public boolean delete(int num) {
		try {
			getCon();

			String sql = "DELETE FROM cursing WHERE num = ?";

			pst = conn.prepareStatement(sql);

			pst.setInt(1, num);
			
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
	
}
