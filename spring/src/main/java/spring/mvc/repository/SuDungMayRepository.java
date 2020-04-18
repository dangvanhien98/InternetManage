package spring.mvc.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import spring.mvc.connection.ConnectSQL;

import spring.mvc.model.SuDungMay;
@Repository
public class SuDungMayRepository {
	public Boolean insert(SuDungMay sd) throws SQLException {
		String sql = "SELECT * FROM SUDUNGMAY";
		try (PreparedStatement cmd = ConnectSQL.cn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE); ResultSet rs = cmd.executeQuery();) {
			rs.moveToInsertRow();
			rs.updateString("MaKH", sd.getMaKH());
			rs.updateString("MaMay", sd.getMaMay());
			rs.updateString("NgayBatDauSuDung", sd.getNgayBatDauSuDung());
			rs.updateString("GioBatDauSuDung", sd.getGioBatDauSuDung());
			rs.updateInt("ThoiGianSuDung", sd.getThoiGianSuDung());
			rs.insertRow();
			
			return true;
		}
		
	}
}
