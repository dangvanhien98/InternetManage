package spring.mvc.model;

import java.math.BigDecimal;

public class LietKe {
	private String MaKH;;
	private String TenKH;
	private String MaMay;
	private String ViTri;
	private String TrangThai;
	private String NgayBatDauSuDung;
	private String GioBatDauSuDung;
	private String ThoiGianSuDung;
	private String MaDV;
	private String NgaySuDung;
	private String GioSuDung;
	private int SoLuong;
	private BigDecimal TongTien;

	public String getMaKH() {
		return MaKH;
	}

	public void setMaKH(String maKH) {
		MaKH = maKH;
	}

	public String getTenKH() {
		return TenKH;
	}

	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}

	public String getMaMay() {
		return MaMay;
	}

	public void setMaMay(String maMay) {
		MaMay = maMay;
	}

	public String getViTri() {
		return ViTri;
	}

	public void setViTri(String viTri) {
		ViTri = viTri;
	}

	public String getTrangThai() {
		return TrangThai;
	}

	public void setTrangThai(String trangThai) {
		TrangThai = trangThai;
	}

	public String getNgayBatDauSuDung() {
		return NgayBatDauSuDung;
	}

	public void setNgayBatDauSuDung(String ngayBatDauSuDung) {
		NgayBatDauSuDung = ngayBatDauSuDung;
	}

	public String getGioBatDauSuDung() {
		return GioBatDauSuDung;
	}

	public void setGioBatDauSuDung(String gioBatDauSuDung) {
		GioBatDauSuDung = gioBatDauSuDung;
	}

	public String getThoiGianSuDung() {
		return ThoiGianSuDung;
	}

	public void setThoiGianSuDung(String thoiGianSuDung) {
		ThoiGianSuDung = thoiGianSuDung;
	}

	public String getMaDV() {
		return MaDV;
	}

	public void setMaDV(String maDV) {
		MaDV = maDV;
	}

	public String getNgaySuDung() {
		return NgaySuDung;
	}

	public void setNgaySuDung(String ngaySuDung) {
		NgaySuDung = ngaySuDung;
	}

	public String getGioSuDung() {
		return GioSuDung;
	}

	public void setGioSuDung(String gioSuDung) {
		GioSuDung = gioSuDung;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public BigDecimal getTongTien() {
		return TongTien;
	}

	public void setTongTien(BigDecimal tongTien) {
		TongTien = tongTien;
	}

	public LietKe(String maKH, String tenKH, String maMay, String viTri, String trangThai, String ngayBatDauSuDung,
			String gioBatDauSuDung, String thoiGianSuDung, String maDV, String ngaySuDung, String gioSuDung,
			int soLuong, BigDecimal tongTien) {
		super();
		MaKH = maKH;
		TenKH = tenKH;
		MaMay = maMay;
		ViTri = viTri;
		TrangThai = trangThai;
		NgayBatDauSuDung = ngayBatDauSuDung;
		GioBatDauSuDung = gioBatDauSuDung;
		ThoiGianSuDung = thoiGianSuDung;
		MaDV = maDV;
		NgaySuDung = ngaySuDung;
		GioSuDung = gioSuDung;
		SoLuong = soLuong;
		TongTien = tongTien;
	}

	public LietKe() {
		super();
	}

}
