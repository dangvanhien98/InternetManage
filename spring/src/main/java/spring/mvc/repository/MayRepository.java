package spring.mvc.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import spring.mvc.connection.ConnectSQL;
import spring.mvc.model.May;

@Repository
public class MayRepository {
	public ArrayList<May> findAll() throws SQLException {
		ArrayList<May> dsMays = new ArrayList<May>();
		String sql = "SELECT * FROM MAY";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql); ResultSet rs = cmd.executeQuery();) {
			while (rs.next()) {
				String maMay = rs.getString("MaMay");
				String viTri = rs.getString("ViTri");
				String trangThai = rs.getString("TrangThai");

				May may = new May(maMay, viTri, trangThai);
				dsMays.add(may);
			}
		}
		return dsMays;
	}

	public May findByID(String id) throws SQLException {
		May may = null;
		String sql = "SELECT * FROM MAY WHERE MaMay=?";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql);) {
			cmd.setString(1, id);
			try (ResultSet rs = cmd.executeQuery();) {
				while (rs.next()) {
					String maMay = rs.getString("MaMay");
					String viTri = rs.getString("ViTri");
					String trangThai = rs.getString("TrangThai");
					may = new May(maMay, viTri, trangThai);
				}
			}
		}
		return may;
	}

	public Boolean insert(May may) throws SQLException {
		String sql = "SELECT * FROM MAY";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE); ResultSet rs = cmd.executeQuery();) {
			rs.moveToInsertRow();
			rs.updateString("MaMay", may.getMaMay());
			rs.updateString("ViTri", may.getViTri());
			rs.updateString("TrangThai", may.getTrangThai());
			rs.insertRow();
			if(rs.next())
				return true;
		}
		return false;
	}

	public void update(May may) throws SQLException {
		
		String sql = "SELECT * FROM MAY";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE); ResultSet rs = cmd.executeQuery();) {
			rs.beforeFirst();
			while (rs.next()) {
				if (rs.getString("MaMay").equals(may.getMaMay())) {
					rs.updateString("ViTri", may.getViTri());
					rs.updateString("TrangThai", may.getTrangThai());
					rs.updateRow();
				}
			}
		}

	}
	
	public ArrayList<May> getMayDK() throws SQLException{
		ArrayList<May> listdk = new ArrayList<May>();
		String sql = "select *from MAY where TrangThai like N'Dang cho su dung'";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql); ResultSet rs = cmd.executeQuery();){
			while(rs.next()) {
				May may = new May();
				may.setMaMay(rs.getString("MaMay"));
				may.setViTri(rs.getString("ViTri"));
				may.setTrangThai(rs.getString("TrangThai"));
				listdk.add(may);
			}
		
		}
		return listdk;
	}
	
	public void updateMay(String mm) throws SQLException {
		
		String sql = "update MAY set TrangThai = N'dang su dung' where MaMay = ?";
		PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql);
		cmd.setString(1, mm);
		cmd.executeUpdate();
		
		}
	
	public void deleteMay(String mm) throws SQLException {
		
		String sql = "delete from MAY where MaMay = ?";
		PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql);
		cmd.setString(1, mm);
		cmd.executeUpdate();
		
		}
}
