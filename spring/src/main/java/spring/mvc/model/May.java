package spring.mvc.model;

public class May {
	private String MaMay;
	private String ViTri;
	private String TrangThai;

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

	public May(String maMay, String viTri, String trangThai) {
		super();
		MaMay = maMay;
		ViTri = viTri;
		TrangThai = trangThai;
	}

	public May() {
		super();
	}
}
