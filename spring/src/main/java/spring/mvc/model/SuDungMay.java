package spring.mvc.model;

public class SuDungMay {
	String MaKH;
	String MaMay;
	String NgayBatDauSuDung;
	String GioBatDauSuDung;
	int ThoiGianSuDung;

	public String getMaKH() {
		return MaKH;
	}

	public void setMaKH(String maKH) {
		MaKH = maKH;
	}

	public String getMaMay() {
		return MaMay;
	}

	public void setMaMay(String maMay) {
		MaMay = maMay;
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

	public int getThoiGianSuDung() {
		return ThoiGianSuDung;
	}

	public void setThoiGianSuDung(int thoiGianSuDung) {
		ThoiGianSuDung = thoiGianSuDung;
	}

	public SuDungMay(String maKH, String maMay, String ngayBatDauSuDung, String gioBatDauSuDung, int thoiGianSuDung) {
		super();
		MaKH = maKH;
		MaMay = maMay;
		NgayBatDauSuDung = ngayBatDauSuDung;
		GioBatDauSuDung = gioBatDauSuDung;
		ThoiGianSuDung = thoiGianSuDung;
	}

	public SuDungMay() {
		super();
	}

}
