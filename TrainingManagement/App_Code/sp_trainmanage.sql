use trainmanage
go
-- 1 Khoa
--
if object_id('sp_tblKhoa_SelectAll')is not null
	drop proc sp_tblKhoa_SelectAll
go
create procedure sp_tblKhoa_SelectAll
as
begin
	select tk.makhoa, tk.tenkhoa, tk.sodienthoai from tblKhoa as tk
end
go
--
if object_id('sp_tblKhoa_Insert')is not null
	drop proc sp_tblKhoa_Insert
go
create procedure sp_tblKhoa_Insert
@makhoa varchar(50),
@tenkhoa nvarchar(100),
@sodienthoai varchar(11)
as
begin
	insert into tblKhoa
	(
		makhoa,
		tenkhoa,
		sodienthoai
	)
	values
	(
		@makhoa,
		@tenkhoa,
		@sodienthoai
	)
end
go
--
if object_id('sp_tblKhoa_Update')is not null
	drop proc sp_tblKhoa_Update
go
create procedure sp_tblKhoa_Update
@id int,
@makhoa varchar(50),
@tenkhoa nvarchar(100),
@sodienthoai varchar(11)
as
begin
	update tblKhoa
	set 
		makhoa = @makhoa,
		tenkhoa = @tenkhoa,
		sodienthoai = @sodienthoai
	where id = @id
end
go
--
if object_id('sp_tblKhoa_Delete')is not null
	drop proc sp_tblKhoa_Delete
go
create procedure sp_tblKhoa_Delete
@id int
as
begin
	delete from tblKhoa
	where id = @id
end
go
--
--2 Chuc Vu
--
/*
if object_id('sp_tblChucvu_SelectAll')is not null
	drop proc sp_tblChucvu_SelectAll
go
create procedure sp_tblChucvu_SelectAll
as
begin
	select tcv.machucvu, tcv.tenchucvu from tblChucVu as tcv
end
go
--
if object_id('sp_tblChucvu_Insert')is not null
	drop proc sp_tblChucvu_Insert
go
create procedure sp_tblChucVu_Insert
@machucvu varchar(50),
@tenchucvu nvarchar(100)
as
begin
	insert into tblChucVu
	(
		machucvu,
		tenchucvu
	)
	values
	(
		@machucvu,
		@tenchucvu
	)
end
go
--
if object_id('sp_tblChucvu_Update')is not null
	drop proc sp_tblChucvu_Update
go
create procedure sp_tblChucVu_Update
@id int,
@machucvu varchar(50),
@tenchucvu nvarchar(100)
as
begin
	update tblChucVu
	set 
		machucvu = @machucvu,
		tenchucvu = @tenchucvu
	where id = @id
end
go
--
if object_id('sp_tblChucvu_Delete')is not null
	drop proc sp_tblChucvu_Delete
go
create procedure sp_tblChucVu_Delete
@id int
as
begin
	delete from tblChucVu
	where id = @id
end
go
*/
--
--3 nien khoa
--
if object_id('sp_tblNienKhoa_SelectAll')is not null
	drop proc sp_tblNienKhoa_SelectAll
go
create procedure sp_tblNienKhoa_SelectAll
as
begin
	select tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
end
go
--
if object_id('sp_tblNienKhoa_Insert')is not null
	drop proc sp_tblNienKhoa_Insert
go
create procedure sp_tblNienKhoa_Insert
@manienkhoa varchar(50),
@tennienkhoa nvarchar(100),
@nambatdau date,
@namketthuc date
as
begin
	insert into tblNienKhoa
	(
		manienkhoa,
		tennienkhoa,
		nambatdau,
		namketthuc
	)
	values
	(
		@manienkhoa,
		@tennienkhoa,
		@nambatdau,
		@namketthuc
	)
end
go
--
if object_id('sp_tblNienKhoa_Update')is not null
	drop proc sp_tblNienKhoa_Update
go
create procedure sp_tblNienKhoa_Update
@id int,
@manienkhoa varchar(50),
@tennienkhoa nvarchar(100),
@nambatdau date,
@namketthuc date
as
begin
	update tblNienKhoa
	set
		manienkhoa = @manienkhoa,
		tennienkhoa = @tennienkhoa,
		nambatdau = @nambatdau,
		namketthuc = @namketthuc
	where id = @id
end
go
--
if object_id('sp_tblNienKhoa_Delete')is not null
	drop proc sp_tblNienKhoa_Delete
go
create procedure sp_tblNienKhoa_Delete
@id int
as
begin
	delete from tblNienKhoa
	where id = @id
end
go
--
--4 tin chi
--
if object_id('sp_tblTinChi_SelectAll')is not null
	drop proc sp_tblTinChi_SelectAll
go
create procedure sp_tblTinChi_SelectAll
as
begin
	select ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
end
go
--
if object_id('sp_tblTinChi_Insert')is not null
	drop proc sp_tblTinChi_Insert
go
create procedure sp_tblTinChi_Insert
@matinchi varchar(50),
@sotinchi varchar(2)
as
begin
	insert into tblTinChi
	(
		matinchi,
		sotinchi
	)
	values
	(
		@matinchi,
		@sotinchi
	)
end
go
--
if object_id('sp_tblTinChi_Update')is not null
	drop proc sp_tblTinChi_Update
go
create procedure sp_tblTinChi_Update
@id int,
@matinchi varchar(50),
@sotinchi varchar(2)
as
begin
	update tblTinChi
	set
		matinchi = @matinchi,
		sotinchi = @sotinchi
	where id = @id
end
go
--
if object_id('sp_tblTinChi_Delete')is not null
	drop proc sp_tblTinChi_Delete
go
create procedure sp_tblTinChi_Delete
@id int
as
begin
	delete from tblTinChi
	where id = @id
end
go
--
--5 hoc ky
--
if object_id('sp_tblHocKy_SelectAll')is not null
	drop proc sp_tblHocKy_SelectAll
go
create procedure sp_tblHocKy_SelectAll
as
begin
	select thk.mahocky, thk.tenhocky from tblHocKy as thk
end
go
--
if object_id('sp_tblHocKy_Insert')is not null
	drop proc sp_tblHocKy_Insert
go
create procedure sp_tblHocKy_Insert
@mahocky varchar(50),
@tenhocky nvarchar(100)
as
begin
	insert into tblHocKy
	(
		mahocky,
		tenhocky
	)
	values
	(
		@mahocky,
		@tenhocky
	)
end
go
--
if object_id('sp_tblHocKy_Update')is not null
	drop proc sp_tblHocKy_Update
go
create procedure sp_tblHocKy_Update
@id int,
@mahocky varchar(50),
@tenhocky nvarchar(100)
as
begin
	update tblHocKy
	set
		mahocky = @mahocky,
		tenhocky = @tenhocky
	where id = @id
end
go
---
if object_id('sp_tblHocKy_Delete')is not null
	drop proc sp_tblHocKy_Delete
go
create procedure sp_tblHocKy_Delete
@id int
as
begin
	delete from tblHocKy
	where id = @id
end
go
--
--6 chuong trinh dao tao
--
if object_id('sp_tblChuongTrinhDaoTao_SelectAll')is not null
	drop proc sp_tblChuongTrinhDaoTao_SelectAll
go
create procedure sp_tblChuongTrinhDaoTao_SelectAll
as
begin
	select tctdt.machuongtrinh, tctdt.tenchuongtrinh from tblChuongTrinhDaoTao as tctdt
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Insert')is not null
	drop proc sp_tblChuongTrinhDaoTao_Insert
go
create procedure sp_tblChuongTrinhDaoTao_Insert
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	insert into tblChuongTrinhDaoTao
	(
		machuongtrinh,
		tenchuongtrinh
	)
	values
	(
		@machuongtrinh,
		@tenchuongtrinh
	)
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Update')is not null
	drop proc sp_tblChuongTrinhDaoTao_Update
go
create procedure sp_tblChuongTrinhDaoTao_Update
@id int,
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	update tblChuongTrinhDaoTao
	set
		machuongtrinh = @machuongtrinh,
		tenchuongtrinh = @tenchuongtrinh
	where id = @id
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Delete')is not null
	drop proc sp_tblChuongTrinhDaoTao_Delete
go
create procedure sp_tblChuongTrinhDaoTao_Delete
@id int
as
begin
	delete from tblChuongTrinhDaoTao
	where id = @id
end
go
--
--7 Trang Thai
--
if object_id('sp_tblTrangThai_SelectAll')is not null
	drop proc sp_tblTrangThai_SelectAll
go
create procedure sp_tblTrangThai_SelectAll
as
begin
	select ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
end
go
--
if object_id('sp_tblTrangThai_Insert')is not null
	drop proc sp_tblTrangThai_Insert
go
create procedure sp_tblTrangThai_Insert
@matrangthai varchar(50),
@tentrangthai nvarchar(100)
as
begin
	insert into tblTrangThai
	(
		matrangthai,
		tentrangthai
	)
	values
	(
		@matrangthai,
		@tentrangthai
	)
end
go
--
if object_id('sp_tblTrangThai_Update')is not null
	drop proc sp_tblTrangThai_Update
go
create procedure sp_tblTrangThai_Update
@id int,
@matrangthai varchar(50),
@tentrangthai nvarchar(100)
as
begin
	update tblTrangThai
	set
		matrangthai = @matrangthai,
		tentrangthai = @tentrangthai
	where id = @id
end
go
--
if object_id('sp_tblTrangThai_Delete')is not null
	drop proc sp_tblTrangThai_Delete
go
create procedure sp_tblTrangThai_Delete
@id int
as
begin
	delete from tblTrangThai
	where id = @id
end
go
--
--8 Lop
--
if object_id('sp_tblLop_SelectAll')is not null
	drop proc sp_tblLop_SelectAll
go
create procedure sp_tblLop_SelectAll
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
end
go
--
if object_id('sp_tblLop_SelectID')is not null
	drop proc sp_tblLop_SelectID
go
create procedure sp_tblLop_SelectID
@id int
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
	where id = @id
end
go
--
if object_id('sp_tblLop_Insert')is not null
	drop proc sp_tblLop_Insert
go
create procedure sp_tblLop_Insert
@idkhoa int,
@idnienkhoa int,
@malop varchar(50),
@tenlop nvarchar(100),
@siso int
as
begin
	insert into tblLop
	(
		idkhoa,
		idnienkhoa,
		malop,
		tenlop,
		siso
	)
	values
	(
		@idkhoa,
		@idnienkhoa,
		@malop,
		@tenlop,
		@siso
	)
end
go
--
if object_id('sp_tblLop_Update')is not null
	drop proc sp_tblLop_Update
go
create procedure sp_tblLop_Update
@id int,
@idkhoa int,
@idnienkhoa int,
@malop varchar(50),
@tenlop nvarchar(100),
@siso int
as
begin
	update tblLop
	set
		idkhoa = @idkhoa,
		idnienkhoa = @idnienkhoa,
		malop = @malop,
		tenlop = @tenlop,
		siso = @siso
	where id = @id
end
go
--
if object_id('sp_tblLop_Delete')is not null
	drop proc sp_tblLop_Delete
go
create procedure sp_tblLop_Delete
@id int
as
begin
	delete from tblLop
	where id = @id
end
go
--
--9 Mon hoc
--
if object_id('sp_tblMonHoc_SelectAll')is not null
	drop proc sp_tblMonHoc_SelectAll
go
create procedure sp_tblMonHoc_SelectAll
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
end
go
--
if object_id('sp_tblMonHoc_SelectID')is not null
	drop proc sp_tblMonHoc_SelectID
go
create procedure sp_tblMonHoc_SelectID
@id int
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
	where id = @id
end
go
--
if object_id('sp_tblMonHoc_Insert')is not null
	drop proc sp_tblMonHoc_Insert
go
create procedure sp_tblMonHoc_Insert
@idchuongtrinh int,
@idhocky int,
@idtinchi int,
@mamonhoc varchar(50),
@tenmonhoc nvarchar(100)
as
begin
	insert into tblMonHoc
	(
		idchuongtrinh,
		idhocky,
		idtinchi,
		mamonhoc,
		tenmonhoc
	)
	values
	(
		@idchuongtrinh,
		@idhocky,
		@idtinchi,
		@mamonhoc,
		@tenmonhoc
	)
end
go
--
if object_id('sp_tblMonHoc_Update')is not null
	drop proc sp_tblMonHoc_Update
go
create procedure sp_tblMonHoc_Update
@id int,
@idchuongtrinh int,
@idhocky int,
@idtinchi int,
@mamonhoc varchar(50),
@tenmonhoc nvarchar(100)
as
begin
	update tblMonHoc
	set
		idchuongtrinh = @idchuongtrinh,
		idhocky = @idhocky,
		idtinchi = @idtinchi,
		mamonhoc = @mamonhoc,
		tenmonhoc = @tenmonhoc
	where id = @id
end
go
--
if object_id('sp_tblMonHoc_Delete')is not null
	drop proc sp_tblMonHoc_Delete
go
create procedure sp_tblMonHoc_Delete
@id int
as
begin
	delete from tblMonHoc
	where id = @id
end
go
--
/*
--10 Giao Vien
--
if object_id('sp_tblGiaoVien_SelectAll')is not null
	drop proc sp_tblGiaoVien_SelectAll
go
create procedure sp_tblGiaoVien_SelectAll
as
begin
	select tgv.idchucvu, tgv.idkhoa, tgv.idmonhoc, tgv.magiaovien, tgv.tengiaovien, tgv.namsinh, tgv.gioitinh, tgv.noisinh, tgv.diachi from tblGiaoVien as tgv
end
go
--
if object_id('sp_tblGiaoVien_SelectID')is not null
	drop proc sp_tblGiaoVien_SelectID
go
create procedure sp_tblGiaoVien_SelectID
@id int
as
begin
	select tgv.idchucvu, tgv.idkhoa, tgv.idmonhoc, tgv.magiaovien, tgv.tengiaovien, tgv.namsinh, tgv.gioitinh, tgv.noisinh, tgv.diachi from tblGiaoVien as tgv
	where id = @id
end
go
--
if object_id('sp_tblGiaoVien_Insert')is not null
	drop proc sp_tblGiaoVien_Insert
go
create procedure sp_tblGiaoVien_Insert
@idchucvu int,
@idkhoa int,
@idmonhoc int,
@magiaovien varchar(50),
@tengiaovien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	insert into tblGiaoVien
	(
		idchucvu,
		idkhoa,
		idmonhoc,
		magiaovien,
		tengiaovien,
		namsinh,
		gioitinh,
		noisinh,
		diachi
	)
	values
	(
		@idchucvu,
		@idkhoa,
		@idmonhoc,
		@magiaovien,
		@tengiaovien,
		@namsinh,
		@gioitinh,
		@noisinh,
		@diachi
	)
end
go
--
if object_id('sp_tblGiaoVien_Update')is not null
	drop proc sp_tblGiaoVien_Update
go
create procedure sp_tblGiaoVien_Update
@id int,
@idchucvu int,
@idkhoa int,
@idmonhoc int,
@magiaovien varchar(50),
@tengiaovien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	update tblGiaoVien
	set
		idchucvu = @idchucvu,
		idkhoa = @idkhoa,
		idmonhoc = @idmonhoc,
		magiaovien = @magiaovien,
		tengiaovien = @tengiaovien,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		noisinh = @noisinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblGiaoVien_Delete')is not null
	drop proc sp_tblGiaoVien_Delete
go
create procedure sp_tblGiaoVien_Delete
@id int
as
begin
	delete from tblGiaoVien
	where id = @id
end
go
*/
--
--11 Sinh vien
--
if object_id('sp_tblSinhVien_SelectAll')is not null
	drop proc sp_tblSinhVien_SelectAll
go
create procedure sp_tblSinhVien_SelectAll
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
end
go
--
if object_id('sp_tblSinhVien_SelectID')is not null
	drop proc sp_tblSinhVien_SelectID
go
create procedure sp_tblSinhVien_SelectID
@id int
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
	where id = @id
end
go
--
if object_id('sp_tblSinhVien_Insert')is not null
	drop proc sp_tblSinhVien_Insert
go
create procedure sp_tblSinhVien_Insert
@idlop int,
@idtrangthai int,
@masinhvien varchar(50),
@tensinhvien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	insert into tblSinhVien
	(
		idlop,
		idtrangthai,
		masinhvien,
		tensinhvien,
		namsinh,
		gioitinh,
		noisinh,
		diachi
	)
	values
	(
		@idlop,
		@idtrangthai,
		@masinhvien,
		@tensinhvien,
		@namsinh,
		@gioitinh,
		@noisinh,
		@diachi
	)
end
go
--
if object_id('sp_tblSinhVien_Update')is not null
	drop proc sp_tblSinhVien_Update
go
create procedure sp_tblSinhVien_Update
@id int,
@idlop int,
@idtrangthai int,
@masinhvien varchar(50),
@tensinhvien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	update tblSinhVien
	set
		idlop = @idlop,
		idtrangthai = @idtrangthai,
		masinhvien = @masinhvien,
		tensinhvien = @tensinhvien,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		noisinh = @noisinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblSinhVien_Delete')is not null
	drop proc sp_tblSinhVien_Delete
go
create procedure sp_tblSinhVien_Delete
@id int
as
begin
	delete from tblSinhVien
	where id = @id
end
go
--
--12 Ket qua
--
if object_id('sp_tblKetQua_SelectAll')is not null
	drop proc sp_tblKetQua_SelectAll
go
create procedure sp_tblKetQua_SelectAll
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
end
go
--
if object_id('sp_tblKetQua_SelectID')is not null
	drop proc sp_tblKetQua_SelectID
go
create procedure sp_tblKetQua_SelectID
@id int
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
	where id = @id
end
go
--
if object_id('sp_tblKetQua_Insert')is not null
	drop proc sp_tblKetQua_Insert
go
create procedure sp_tblKetQua_Insert
@idsinhvien int,
@idmonhoc int,
@diemtrungbinh float,
@diemthilan1 float,
@diemthilan2 float,
@diemtongket float,
@hanhkiem nvarchar(100),
@ghichu nvarchar(100)
as
begin
	insert into tblKetQua
	(
		idsinhvien,
		idmonhoc,
		diemtrungbinh,
		diemthilan1,
		diemthilan2,
		diemtongket,
		hanhkiem,
		ghichu
	)
	values
	(
		@idsinhvien,
		@idmonhoc,
		@diemtrungbinh,
		@diemthilan1,
		@diemthilan2,
		@diemtongket,
		@hanhkiem,
		@ghichu
	)
end
go
--
if object_id('sp_tblKetQua_Update')is not null
	drop proc sp_tblKetQua_Update
go
create procedure sp_tblKetQua_Update
@id int,
@idsinhvien int,
@idmonhoc int,
@diemtrungbinh float,
@diemthilan1 float,
@diemthilan2 float,
@diemtongket float,
@hanhkiem nvarchar(100),
@ghichu nvarchar(100)
as
begin
	update tblKetQua
	set
		idsinhvien = @idsinhvien,
		idmonhoc = @idmonhoc,
		diemtrungbinh = @diemtrungbinh,
		diemthilan1 = @diemthilan1,
		diemthilan2 = @diemthilan2,
		diemtongket = @diemtongket,
		hanhkiem = @hanhkiem,
		ghichu = @ghichu
	where id = @id
end
go
--
if object_id('sp_tblKetQua_Delete')is not null
	drop proc sp_tblKetQua_Delete
go
create procedure sp_tblKetQua_Delete
@id int
as
begin
	delete from tblKetQua
	where id = @id
end
go
--
--13 Tai Khoan
--
if object_id('sp_tblTaiKhoan_SelectAll')is not null
	drop proc sp_tblTaiKhoan_SelectAll
go
create procedure sp_tblTaiKhoan_SelectAll
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
end
go
--
if object_id('sp_tblTaiKhoan_SelectID')is not null
	drop proc sp_tblTaiKhoan_SelectID
go
create procedure sp_tblTaiKhoan_SelectID
@id int
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
	where id = @id
end
go
--
if object_id('sp_tblTaiKhoan_Insert')is not null
	drop proc sp_tblTaiKhoan_Insert
go
create procedure sp_tblTaiKhoan_Insert
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	insert into tblTaiKhoan
	(
		tentaikhoan,
		matkhau,
		nhom
	)
	values
	(
		@tentaikhoan,
		@matkhau,
		@nhom
	)
end
go
--
if object_id('sp_tblTaiKhoan_Update')is not null
	drop proc sp_tblTaiKhoan_Update
go
create procedure sp_tblTaiKhoan_Update
@id int,
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	update tblTaiKhoan
	set
		tentaikhoan = @tentaikhoan,
		matkhau = @matkhau,
		nhom = @nhom
	where id = @id
end
go
--
if object_id('sp_tblTaiKhoan_Delete')is not null
	drop proc sp_tblTaiKhoan_Delete
go
create procedure sp_tblTaiKhoan_Delete
@id int
as
begin
	delete from tblTaiKhoan
	where id = @id
end
go
--- 
if object_id('sp_tblTaiKhoan_Check')is not null
	drop proc sp_tblTaiKhoan_Check
go
create procedure sp_tblTaiKhoan_Check
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	select tentaikhoan, matkhau, nhom from tblTaiKhoan
	where tentaikhoan = @tentaikhoan and matkhau = @matkhau
end
go
--
--13 Thong Tin
--
if object_id('sp_tblThongTin_SelectAll')is not null
	drop proc sp_tblThongTin_SelectAll
go
create procedure sp_tblThongTin_SelectAll
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
end
go
--
if object_id('sp_tblThongTin_SelectID')is not null
	drop proc sp_tblThongTin_SelectID
go
create procedure sp_tblThongTin_SelectID
@id int
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
	where id = @id
end
go
--
if object_id('sp_tblThongTin_Insert')is not null
	drop proc sp_tblThongTin_Insert
go
create procedure sp_tblThongTin_Insert
@hoten nvarchar(100),
@chucvu nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100)
as
begin
	insert into tblThongTin
	(
		hoten,
		chucvu,
		namsinh,
		gioitinh,
		diachi
	)
	values
	(
		@hoten,
		@chucvu,
		@namsinh,
		@gioitinh,
		@diachi
	)
end
go
--
if object_id('sp_tblThongTin_Update')is not null
	drop proc sp_tblThongTin_Update
go
create procedure sp_tblThongTin_Update
@id int,
@hoten nvarchar(100),
@chucvu nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100)
as
begin
	update tblThongTin
	set
		hoten = @hoten,
		chucvu = @chucvu,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblThongTin_Delete')is not null
	drop proc sp_tblThongTin_Delete
go
create procedure sp_tblThongTin_Delete
@id int
as
begin
	delete from tblThongTin
	where id = @id
end
go
--- 