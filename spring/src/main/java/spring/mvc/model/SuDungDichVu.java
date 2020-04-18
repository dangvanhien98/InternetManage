package spring.mvc.model;

public class SuDungDichVu {
	private String MaKH;
	private String MaDV;
	private String NgaySuDung;
	private String GioSuDung;
	private int SoLuong;

	public String getMaKH() {
		return MaKH;
	}

	public void setMaKH(String maKH) {
		MaKH = maKH;
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

	public SuDungDichVu(String maKH, String maDV, String ngaySuDung, String gioSuDung, int soLuong) {
		super();
		MaKH = maKH;
		MaDV = maDV;
		NgaySuDung = ngaySuDung;
		GioSuDung = gioSuDung;
		SoLuong = soLuong;
	}
	public SuDungDichVu() {
		super();
	}


}
