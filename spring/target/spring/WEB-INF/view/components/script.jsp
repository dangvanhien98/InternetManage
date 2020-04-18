<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="../../vendor/datatables/jquery.dataTables.js"></script>
<script src="../../vendor/datatables/dataTables.bootstrap4.js"></script>
<script src="../../js/demo/datatables-demo.js"></script>


<script type="text/javascript">
    /********************************************************************************************/
    //validate form add Khach Hang
    let checkMaKH = checkPhone = checkEmail = false;
    //submit form KH
    $('#SaveKH').click(function() {
        if (checkMaKH && checkPhone && checkEmail)
            $('#formKhachHang').submit();
        else
            alert("Vui long nhap dung du lieu!");
    });

    $('#addKhachHangBtn').click(function() {
        $('#KhachHangModalLabel').text("New Khach Hang");
        $('#formKhachHang').attr('action', 'addKhachHang');

        $("#MaKH").val("");
        $("#TenKH").val("");
        $("#DiaChi").val("");
        $("#SoDienThoai").val("");
        $("#DiaChiEmail").val("");

        $('#MaKH').prop('readonly', false);
        checkMaKH = checkPhone = checkEmail = false;
    });

    $('.editKhachHangBtn').click(function() {
        $('#KhachHangModalLabel').text("Edit Khach Hang");
        $('#formKhachHang').attr('action', 'editKhachHang');
        const tr = $(this).closest('tr');
        const maKH = tr.find('th:first').text();
        const tenKH = tr.find('td:eq(0)').text();
        const diaChi = tr.find('td:eq(1)').text();
        const soDienThoai = tr.find('td:eq(2)').text();
        const email = tr.find('td:eq(3)').text();

        $("#MaKH").val(maKH);
        $("#TenKH").val(tenKH);
        $("#DiaChi").val(diaChi);
        $("#SoDienThoai").val(soDienThoai);
        $("#DiaChiEmail").val(email);

        $('#MaKH').prop('readonly', true);
        checkMaKH = checkPhone = checkEmail = true;
    });
    /**************/
    //validate mã khách hàng
    $("#MaKH").blur(function() {
        const maKH = $("#MaKH").val().trim();
        if (!isValidateMaKH(maKH)) {
            $('#MaKH-Error').text("Vui long nhap lai");
            checkMaKH = false;
        } else {
            $('#MaKH-Error').text("");
            checkMaKH = true;
        }
    });
    //validate số điện thoại
    $("#SoDienThoai").blur(function() {
        const sdt = $('#SoDienThoai').val().trim();
        if (!isValidatePhone(sdt)) {
            $('#SoDienThoai-Error').text("Vui long nhap lai");
            checkPhone = false;
        } else {
            checkPhone = true;
            $('#SoDienThoai-Error').text("");
        }
    });
    //validate email
    $("#DiaChiEmail").blur(function() {
        const email = $('#DiaChiEmail').val().trim();
        if (!isValidateEmail(email)) {
            $('#DiaChiEmail-Error').text("Vui long nhap lai");
            checkEmail = false;
        } else {
            $('#DiaChiEmail-Error').text("");
            checkEmail = true;
        }
    });
    /********************************************************************************************/
    $('#addMayBtn').click(function() {
        $('#MayModalLabel').text("New May");
        $('#formMay').attr('action', 'addMay');

        $("#MaMay").val("");
        $("#ViTri").val("");
        $("#TrangThai").val("");

        $('#MaMay').prop('readonly', false);
    });

    $(".editMayBtn").click(function() {
        $('#MayModalLabel').text("Edit May");
        $('#formMay').attr('action', 'editMay');

        const tr = $(this).closest('tr');
        const maMay = tr.find('th:first').text();
        const viTri = tr.find('td:eq(0)').text();
        const trangThai = tr.find('td:eq(1)').text();

        $("#MaMay").val(maMay);
        $("#ViTri").val(viTri);
        $("#TrangThai").val(trangThai);

        $('#MaMay').prop('readonly', true);
    });
    /********************************************************************************************/
    //Đưa data lên modal Đăng Kí Sử Dụng Dịch Vụ
    $(".dangKyMBtn").click(function() {
        const tr = $(this).closest('tr');
        const MaMay = tr.find('th:first').text();

        $('[name=MaMay] option').filter(function() {
            return ($(this).text() == MaMay);
        }).prop('selected', true);
    });
    let checkNgayBatDauSuDung = checkGioBatDauSuDung = checkThoiGianSuDung = false;
    //submit form Dịch Vụ
    $('#SaveSDM').click(function() {
        if (checkNgayBatDauSuDung && checkGioBatDauSuDung && checkThoiGianSuDung)
            $('#formDksdMay').submit();
        else
            alert("Vui long nhap dung du lieu!");
    });
    /**************/
    //validate ngaybatdausudung
    $("#NgayBatDauSuDung").blur(function() {
        const ngayBatDauSuDung = $('#NgayBatDauSuDung').val().trim();
        if (!isValidateDate(ngayBatDauSuDung)) {
            $('#NgayBatDauSuDung-Error').text("Vui long nhap lai");
            checkNgayBatDauSuDung = false;
        } else {
            $('#NgayBatDauSuDung-Error').text("");
            checkNgayBatDauSuDung = true;
        }
    });
    //validate gioBatDauSuDung
    $("#GioBatDauSuDung").blur(function() {
        const gioBatDauSuDung = $('#GioBatDauSuDung').val().trim();
        if (!isValidateHhMm(gioBatDauSuDung)) {
            $('#GioBatDauSuDung-Error').text("Vui long nhap lai");
            checkGioBatDauSuDung = false;
        } else {
            $('#GioBatDauSuDung-Error').text("");
            checkGioBatDauSuDung = true;
        }
    });
    //validate thoiGianSuDung
    $("#ThoiGianSuDung").blur(function() {
        const thoiGianSuDung = $('#ThoiGianSuDung').val().trim();
        if (!isValidateNum(thoiGianSuDung)) {
            $('#ThoiGianSuDung-Error').text("Vui long nhap lai");
            checkThoiGianSuDung = false;
        } else {
            $('#ThoiGianSuDung-Error').text("");
            checkThoiGianSuDung = true;
        }
    });

    /********************************************************************************************/
    //validate form Dịch Vụ
    let checkMaDV = checkDonGia = false;
    //submit form Dịch Vụ
    $('#SaveDV').click(function() {
        if (checkMaDV && checkDonGia)
            $('#formDichVu').submit();
        else
            alert("Vui long nhap dung du lieu!");
    });

    $('#addDichVuBtn').click(function() {
        $('#DichVuModalLabel').text("New Dich Vu");
        $('#formDichVu').attr('action', 'addDichVu');

        $("#MaDV").val("");
        $("#TenDV").val("");
        $("#DonViTinh").val("");
        $("#DonGia").val("");
        $('#MaDV').prop('readonly', false);
        checkMaDV = checkDonGia = false;
    });

    $('.editBtn').click(function() {
        $('#DichVuModalLabel').text("Edit Dich Vu");
        $('#formDichVu').attr('action', 'editDichVu');
        const tr = $(this).closest('tr');
        const MaDV = tr.find('th:first').text();
        const TenDV = tr.find('td:eq(0)').text();
        const DonViTinh = tr.find('td:eq(1)').text();
        const DonGia = tr.find('td:eq(2)').text();

        $("#MaDV").val(MaDV);
        $("#TenDV").val(TenDV);
        $("#DonViTinh").val(DonViTinh);
        $("#DonGia").val(DonGia);
        $('#MaDV').prop('readonly', true);

        checkMaDV = checkDonGia = true;
    });

    /**************/
    //validate maDichVu
    $("#MaDV").blur(function() {
        const maDV = $('#MaDV').val().trim();
        if (!isValidateMaDV(maDV)) {
            $('#MaDV-Error').text("Vui long nhap lai");
            checkMaDV = false;
        } else {
            $('#MaDV-Error').text("");
            checkMaDV = true;
        }
    });
    //validate donGia
    $("#DonGia").blur(function() {
        const donGia = $('#DonGia').val().trim();
        if (!isValidateNum(donGia)) {
            $('#DonGia-Error').text("Vui long nhap lai");
            checkDonGia = false;
        } else {
            $('#DonGia-Error').text("");
            checkDonGia = true;
        }
    });
    /********************************************************************************************/
    //validate form Đăng ký sử dụng dịch vụ
    //Đưa data lên modal Đăng Kí Sử Dụng May
    $(".dangKyDVBtn").click(function() {
        const tr = $(this).closest('tr');
        const MaDV = tr.find('th:first').text();

        $('[name=MaDV] option').filter(function() {
            return ($(this).text() == MaDV);
        }).prop('selected', true);
    });
    let checkNgaySuDung = checkGioSuDung = checkSoLuong = false;
    //submit form Dịch Vụ
    $('#SaveSDDV').click(function() {
        if (checkNgaySuDung && checkGioSuDung && checkSoLuong)
            $('#formDksdDV').submit();
        else
            alert("Vui long nhap dung du lieu!");
    });
    /**************/
    //validate ngaySuDung
    $("#NgaySuDung").blur(function() {
        const ngaySuDung = $('#NgaySuDung').val().trim();
        if (!isValidateDate(ngaySuDung)) {
            $('#NgaySuDung-Error').text("Vui long nhap lai");
            checkNgaySuDung = false;
        } else {
            $('#NgaySuDung-Error').text("");
            checkNgaySuDung = true;
        }
    });
    //validate gioSuDung
    $("#GioSuDung").blur(function() {
        const gioSuDung = $('#GioSuDung').val().trim();
        if (!isValidateHhMm(gioSuDung)) {
            $('#GioSuDung-Error').text("Vui long nhap lai");
            checkGioSuDung = false;
        } else {
            $('#GioSuDung-Error').text("");
            checkGioSuDung = true;
        }
    });
    //validate soLuong
    $("#SoLuong").blur(function() {
        const soLuong = $('#SoLuong').val().trim();
        if (!isValidateNum(soLuong)) {
            $('#SoLuong-Error').text("Vui long nhap lai");
            checkSoLuong = false;
        } else {
            $('#SoLuong-Error').text("");
            checkSoLuong = true;
        }
    });
    /**********************************************************/


    //Các hàm validate
    function isValidatePhone(text) {
        const re = /^(([(]84[)]?[+](90|91)|090|091)+([0-9]{7})\b)$/g;
        return re.test(text);
    }

    function isValidateEmail(email) {
        const re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return re.test(String(email).toLowerCase());
    }

    function isValidateNum(number) {
        return (Number.isInteger(0) && number > 0);
    }

    function isValidateHhMm(input) {
        const re = /^([0-1]?[0-9]|2[0-3]):([0-5][0-9])$/;
        return re.test(input);
    }

    function isValidateDate(input) {
        //const re = /^([0-9]{1,2})[/]([0-9]{1,2}[/][0-9]{4})$/;
        const re = /^([0-9]{4})[/-](0[0-9]|1[0-2])[/-]([0-2][0-9]|3[0-1])$/;
        return re.test(input);
    }

    function isValidateMaKH(input) {
        const re = /^(KH)[0-9]{5}$/;
        return re.test(input);
    }

    function isValidateMaDV(input) {
        const re = /^(DV)[0-9]{3}$/;
        return re.test(input);
    }
</script>