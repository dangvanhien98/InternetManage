package spring.mvc.model;

import java.math.BigDecimal;

public class DichVu {
	private String MaDV;
	private String TenDV;
	private String DonViTinh;
	private BigDecimal DonGia;

	public String getMaDV() {
		return MaDV;
	}

	public void setMaDV(String maDV) {
		MaDV = maDV;
	}

	public String getTenDV() {
		return TenDV;
	}

	public void setTenDV(String tenDV) {
		TenDV = tenDV;
	}

	public String getDonViTinh() {
		return DonViTinh;
	}

	public void setDonViTinh(String donViTinh) {
		DonViTinh = donViTinh;
	}

	public BigDecimal getDonGia() {
		return DonGia;
	}

	public void setDonGia(BigDecimal donGia) {
		DonGia = donGia;
	}

	public DichVu(String maDV, String tenDV, String donViTinh, BigDecimal donGia) {
		super();
		MaDV = maDV;
		TenDV = tenDV;
		DonViTinh = donViTinh;
		DonGia = donGia;
	}

	public DichVu() {
		super();
	}

}
