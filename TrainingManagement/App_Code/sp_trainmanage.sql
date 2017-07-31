﻿use trainmanage
go
---------------------Table---------------------
-- 1 Khoa
--
if object_id('sp_tblKhoa_SelectAll')is not null
	drop proc sp_tblKhoa_SelectAll
go
create procedure sp_tblKhoa_SelectAll
as
begin
	select tk.id, tk.makhoa, tk.tenkhoa, tk.sodienthoai from tblKhoa as tk
end
go
--exec sp_tblKhoa_SelectAll
--
if object_id('sp_tblKhoa_SelectID')is not null
	drop proc sp_tblKhoa_SelectID
go
create procedure sp_tblKhoa_SelectID
@id int
as
begin
	select tk.id, tk.makhoa, tk.tenkhoa, tk.sodienthoai from tblKhoa as tk
	where id = @id
end
go
--exec sp_tblKhoa_SelectID '1'
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
--exec 
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
--exec sp_tblKhoa_Update 
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
--exec sp_tblKhoa_Delete '11' select * from tblKhoa
--2 Chuc Vu
--
if object_id('sp_tblChucvu_SelectAll')is not null
	drop proc sp_tblChucvu_SelectAll
go
create procedure sp_tblChucvu_SelectAll
as
begin
	select tcv.id, tcv.machucvu, tcv.tenchucvu from tblChucVu as tcv
end
go--
if object_id('sp_tblChucvu_SelectID')is not null
	drop proc sp_tblChucvu_SelectID
go
create procedure sp_tblChucvu_SelectID
@id int
as
begin
	select tcv.id, tcv.machucvu, tcv.tenchucvu from tblChucVu as tcv
	where id = @id
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
--
--3 nien khoa
--
if object_id('sp_tblNienKhoa_SelectAll')is not null
	drop proc sp_tblNienKhoa_SelectAll
go
create procedure sp_tblNienKhoa_SelectAll
as
begin
	select tnk.id, tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
end
go
--
if object_id('sp_tblNienKhoa_SelectID')is not null
	drop proc sp_tblNienKhoa_SelectID
go
create procedure sp_tblNienKhoa_SelectID
@id int
as
begin
	select tnk.id, tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
	where id = @id
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
	select ttc.id, ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
end
go
--
if object_id('sp_tblTinChi_SelectID')is not null
	drop proc sp_tblTinChi_SelectID
go
create procedure sp_tblTinChi_SelectID
@id int
as
begin
	select ttc.id, ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
	where id = @id
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
	select thk.id, thk.mahocky, thk.tenhocky from tblHocKy as thk
end
go
--
if object_id('sp_tblHocKy_SelectID')is not null
	drop proc sp_tblHocKy_SelectID
go
create procedure sp_tblHocKy_SelectID
@id int
as
begin
	select thk.id, thk.mahocky, thk.tenhocky from tblHocKy as thk
	where id = @id
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
if object_id('sp_tblChuongTrinh_SelectAll')is not null
	drop proc sp_tblChuongTrinh_SelectAll
go
create procedure sp_tblChuongTrinh_SelectAll
as
begin
	select tct.id, tct.idtrangthai, tct.machuongtrinh, tct.tenchuongtrinh from tblChuongTrinh as tct
end
go
--
if object_id('sp_tblChuongTrinh_SelectID')is not null
	drop proc sp_tblChuongTrinh_SelectID
go
create procedure sp_tblChuongTrinh_SelectID
@id int
as
begin
	select tct.id, tct.idtrangthai, tct.machuongtrinh, tct.tenchuongtrinh from tblChuongTrinh as tct
	where id = @id
end
go
--
if object_id('sp_tblChuongTrinh_Insert')is not null
	drop proc sp_tblChuongTrinh_Insert
go
create procedure sp_tblChuongTrinh_Insert
@idtrangthai int,
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	insert into tblChuongTrinh
	(
		idtrangthai,
		machuongtrinh,
		tenchuongtrinh
	)
	values
	(
		@idtrangthai,
		@machuongtrinh,
		@tenchuongtrinh
	)
end
go
--
if object_id('sp_tblChuongTrinh_Update')is not null
	drop proc sp_tblChuongTrinh_Update
go
create procedure sp_tblChuongTrinh_Update
@id int,
@idtrangthai int,
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	update tblChuongTrinh
	set
		idtrangthai = @idtrangthai,
		machuongtrinh = @machuongtrinh,
		tenchuongtrinh = @tenchuongtrinh
	where id = @id
end
go
--
if object_id('sp_tblChuongTrinh_Delete')is not null
	drop proc sp_tblChuongTrinh_Delete
go
create procedure sp_tblChuongTrinh_Delete
@id int
as
begin
	delete from tblChuongTrinh
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
	select ttt.id, ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
end
go
--
if object_id('sp_tblTrangThai_SelectID')is not null
	drop proc sp_tblTrangThai_SelectID
go
create procedure sp_tblTrangThai_SelectID
@id int
as
begin
	select ttt.id, ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
	where id = @id
end
go
--
if object_id('sp_tblTrangThai_ViewSinhVien')is not null
	drop proc sp_tblTrangThai_ViewSinhVien
go
create procedure sp_tblTrangThai_ViewSinhVien
as
begin
	select g.id as 'idtaikhoan', g.hoten, f.tenlop, i.tenkhoa, b.tenchuongtrinh , h.tenhocky, a.tentrangthai, a.id as 'id', a.matrangthai, b.id as 'idchuongtrinh', b.machuongtrinh,
	c.idtinchi, c.id as 'idmonhoc', c.mamonhoc, c.tenmonhoc, d.id as 'idketqua', d.diemthilan1, d.diemthilan2, d.diemtongket, d.diemtrungbinh, d.ghichu, d.hanhkiem, e.id as 'idsinhvien',
	f.id as 'idlop', f.idnienkhoa, f.malop, f.siso, g.diachi, g.dienthoai, g.email, g.gioitinh, g.idnhom, g.matkhau, g.namsinh, g.tentaikhoan,
	h.id as 'idhocky', h.mahocky, i.id as 'idkhoa', i.makhoa, i.sodienthoai
	from tblTrangThai a
		inner join tblChuongTrinh b on b.idtrangthai = a.id
		inner join tblMonHoc c on c.idchuongtrinh = b.id
		inner join tblKetQua d on d.idmonhoc = c.id
		inner join tblSinhVien e on d.idsinhvien = e.id
		inner join tblLop f on e.idlop = f.id
		inner join tblTaiKhoan g on e.idtaikhoan = g.id
		inner join tblHocKy h on c.idhocky = h.id
		inner join tblKhoa i on f.idkhoa = i.id
end
go
--exec sp_tblTrangThai_ViewSinhVien
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
-----8 Nhom
--
if object_id('sp_tblNhom_SelectAll')is not null
	drop proc sp_tblNhom_SelectAll
go
create procedure sp_tblNhom_SelectAll
as
begin
	select tn.id, tn.manhom, tn.tennhom from tblNhom as tn
end
go
--
if object_id('sp_tblNhom_SelectID')is not null
	drop proc sp_tblNhom_SelectID
go
create procedure sp_tblNhom_SelectID
@id int
as
begin
	select tn.id, tn.manhom, tn.tennhom from tblNhom as tn
	where id = @id
end
go
--
if object_id('sp_tblNhom_Insert')is not null
	drop proc sp_tblNhom_Insert
go
create procedure sp_tblNhom_Insert
@manhom varchar(50),
@tennhom nvarchar(100)
as
begin
	insert into tblNhom
	(
		manhom,
		tennhom
	)
	values
	(
		@manhom,
		@tennhom
	)
end
go
--
if object_id('sp_tblNhom_Update')is not null
	drop proc sp_tblNhom_Update
go
create procedure sp_tblNhom_Update
@id int,
@manhom varchar(50),
@tennhom nvarchar(100)
as
begin
	update tblNhom
	set 
		manhom = @manhom,
		tennhom = @tennhom
	where id = @id
end
go
--
if object_id('sp_tblNhom_Delete')is not null
	drop proc sp_tblNhom_Delete
go
create procedure sp_tblNhom_Delete
@id int
as
begin
	delete from tblNhom
	where id = @id
end
go
--
--
--9 Lop
--
if object_id('sp_tblLop_SelectAll')is not null
	drop proc sp_tblLop_SelectAll
go
create procedure sp_tblLop_SelectAll
as
begin
	select tl.id, tl.malop, tl.tenlop, tl.siso from tblLop as tl
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
	select tl.id, tl.malop, tl.tenlop, tl.siso from tblLop as tl
	where id = @id
end
go
--
if object_id('sp_tblLop_View')is not null
	drop proc sp_tblLop_View
go
create procedure sp_tblLop_View
as
begin
	select a.malop, a.tenlop, b.tenkhoa, c.tennienkhoa, a.siso
	from tblLop as a
		inner join tblKhoa b on a.idkhoa = b.id
		inner join tblNienKhoa c on a.idnienkhoa = c.id
end
go
--
if object_id('sp_tblLop_ViewYear')is not null
	drop proc sp_tblLop_ViewYear
go
create procedure sp_tblLop_ViewYear
as
begin
	select a.malop, a.tenlop, b.tenkhoa, c.tennienkhoa, a.siso, c.nambatdau, c.namketthuc
	from tblLop as a
		inner join tblKhoa b on a.idkhoa = b.id
		inner join tblNienKhoa c on a.idnienkhoa = c.id
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
--10 Mon hoc
--
if object_id('sp_tblMonHoc_SelectAll')is not null
	drop proc sp_tblMonHoc_SelectAll
go
create procedure sp_tblMonHoc_SelectAll
as
begin
	select tmh.id, tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
end
go
--exec sp_tblMonHoc_SelectAll
if object_id('sp_tblMonHoc_SelectID')is not null
	drop proc sp_tblMonHoc_SelectID
go
create procedure sp_tblMonHoc_SelectID
@id int
as
begin
	select tmh.id, tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
	where id = @id
end
go
--
if object_id('sp_tblMonHoc_View')is not null
	drop proc sp_tblMonHoc_view
go
create procedure sp_tblMonHoc_View
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.mamonhoc as N'Mã môn học', a.tenmonhoc as N'Tên môn học', b.tenchuongtrinh as N'Tên chương trình', c.tenhocky as N'Tên học kỳ', d.sotinchi as N'Số tín chỉ'
	from tblMonHoc a
		inner join tblChuongTrinh b on a.idchuongtrinh = b.id
		inner join tblHocKy c on a.idhocky = c.id
		inner join tblTinChi d on a.idtinchi = d.id
	where a.mamonhoc like '%' + @keyword + '%'
	order by a.id
end
go
--exec sp_tblMonHoc_View 'mh1'
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

--11 Tai Khoan
--
if object_id('sp_tblTaiKhoan_SelectAll')is not null
	drop proc sp_tblTaiKhoan_SelectAll
go
create procedure sp_tblTaiKhoan_SelectAll
as
begin
	select ttk.id, ttk.idnhom, ttk.tentaikhoan,ttk.matkhau, tn.tennhom, tn.manhom, ttk.hoten, ttk.namsinh, ttk.gioitinh, ttk.diachi, ttk.email, ttk.dienthoai 
	from tblTaiKhoan as ttk 
		inner join tblNhom as tn on ttk.idnhom = tn.id
	order by gioitinh
end
go
--
if object_id('sp_tblTaiKhoan_GetSV')is not null
	drop proc sp_tblTaiKhoan_GetSV
go
create procedure sp_tblTaiKhoan_GetSV
as
begin
	select ttk.id, ttk.idnhom, ttk.tentaikhoan,ttk.matkhau, tn.tennhom, tn.manhom, ttk.hoten, ttk.namsinh, ttk.gioitinh, ttk.diachi, ttk.email, ttk.dienthoai 
	from tblTaiKhoan as ttk 
		inner join tblNhom as tn on ttk.idnhom = tn.id
	where idnhom = 4
end
go
--exec sp_tblTaiKhoan_GetSV
if object_id('sp_tblTaiKhoan_SelectID')is not null
	drop proc sp_tblTaiKhoan_SelectID
go
create procedure sp_tblTaiKhoan_SelectID
@id int
as
begin
	select ttk.id, ttk.idnhom, ttk.tentaikhoan,ttk.matkhau, tn.tennhom, tn.manhom, ttk.hoten, ttk.namsinh, ttk.gioitinh, ttk.diachi, ttk.email, ttk.dienthoai
	from tblTaiKhoan as ttk 
		inner join tblNhom as tn on ttk.idnhom = tn.id
	where ttk.id = @id
end
go
--exec sp_tblTaiKhoan_SelectID '1'
if object_id('sp_tblTaiKhoan_Insert')is not null
	drop proc sp_tblTaiKhoan_Insert
go
create procedure sp_tblTaiKhoan_Insert
@idnhom int,
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@hoten nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100),
@email nvarchar(100),
@dienthoai nvarchar(12)
as
begin
	insert into tblTaiKhoan
	(
		idnhom,
		tentaikhoan,
		matkhau,
		hoten,
		namsinh,
		gioitinh,
		diachi,
		email,
		dienthoai
	)
	values
	(
		@idnhom,
		@tentaikhoan,
		@matkhau,
		@hoten,
		@namsinh,
		@gioitinh,
		@diachi,
		@email,
		@dienthoai
	)
end
go
--exec sp_tblTaiKhoan_Insert '3','gv11','123456789','Test','1992','Nam','Test','Test','123456789',''
if object_id('sp_tblTaiKhoan_Update')is not null
	drop proc sp_tblTaiKhoan_Update
go
create procedure sp_tblTaiKhoan_Update
@id int,
@idnhom int,
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@hoten nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100),
@email nvarchar(100),
@dienthoai nvarchar(12)
as
begin
	update tblTaiKhoan
	set
		idnhom = @idnhom,
		tentaikhoan = @tentaikhoan,
		matkhau = @matkhau,
		hoten = @hoten,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		diachi = @diachi,
		email = @email,
		dienthoai = @dienthoai
	where id = @id
end
go
--
if object_id('sp_tblTaiKhoan_UpdatePassword')is not null
	drop proc sp_tblTaiKhoan_UpdatePassword
go
create procedure sp_tblTaiKhoan_UpdatePassword
@tentaikhoan nvarchar(100),
@matkhaucu nvarchar(100),
@matkhaumoi nvarchar(100)
as
begin
	declare @matkhau nvarchar(100);
	set @matkhau = (select matkhau from tblTaiKhoan where tentaikhoan=@tentaikhoan)
	if(@matkhau = @matkhaucu)
	begin
		update tblTaiKhoan set matkhau = @matkhaumoi where tentaikhoan = @tentaikhoan;
		return @@rowcount;
	end
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
@matkhau nvarchar(100)
as
begin
	select count(*), b.tennhom, a.id, a.hoten 
	from tblTaiKhoan a
		inner join tblNhom b on a.idnhom = b.id
	where tentaikhoan = @tentaikhoan and matkhau = @matkhau
	group by b.tennhom, a.id, a.hoten
end
go
--exec sp_tblTaiKhoan_CheckCount 'qt', '12345678'--- 
if object_id('sp_tblTaiKhoan_CheckCount')is not null
	drop proc sp_tblTaiKhoan_CheckCount
go
create procedure sp_tblTaiKhoan_CheckCount
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100)
as
begin
	select count(*)
	from tblTaiKhoan a
	where tentaikhoan = @tentaikhoan and matkhau = @matkhau
end
go
--- 
if object_id('sp_tblTaiKhoan_CheckGroup')is not null
	drop proc sp_tblTaiKhoan_CheckGroup
go
create procedure sp_tblTaiKhoan_CheckGroup
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100)
as
begin
	select b.id
	from tblTaiKhoan a 
		inner join tblNhom b on a.idnhom = b.id
	where a.tentaikhoan = @tentaikhoan and a.matkhau = @matkhau
end
go
--- 
if object_id('sp_tblTaiKhoan_CheckID')is not null
	drop proc sp_tblTaiKhoan_CheckID
go
create procedure sp_tblTaiKhoan_CheckID
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100)
as
begin
	select a.id
	from tblTaiKhoan a
	where a.tentaikhoan = @tentaikhoan and a.matkhau = @matkhau
end
go
--exec sp_tblTaiKhoan_CheckGroup 'qt' ,'12345678'
--13 Sinh vien
--
if object_id('sp_tblSinhVien_SelectAll')is not null
	drop proc sp_tblSinhVien_SelectAll
go
create procedure sp_tblSinhVien_SelectAll
as
begin
	select tsv.id, tsv.idlop, tsv.idtaikhoan, tsv.idtrangthai from tblSinhVien as tsv
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
	select tsv.id, tsv.idlop, tsv.idtaikhoan, tsv.idtrangthai from tblSinhVien as tsv
	where id = @id
end
go
--
if object_id('sp_tblSinhVien_View')is not null
	drop proc sp_tblSinhVien_View
go
create procedure sp_tblSinhVien_View
as
begin
	select b.hoten, c.tenlop, d.tentrangthai, b.gioitinh, b.namsinh
	from tblSinhVien a
		inner join tblTaiKhoan b on a.idtaikhoan = b.id
		inner join tblLop c on a.idlop = b.id
		inner join tblTrangThai d on a.idtrangthai = c.id
	order by a.id
end
go
--
if object_id('sp_tblSinhVien_Insert')is not null
	drop proc sp_tblSinhVien_Insert
go
create procedure sp_tblSinhVien_Insert
@idlop int,
@idnhom int,
@idtaikhoan int,
@idtrangthai int
as
begin
	insert into tblSinhVien
	(
		idlop,
		idtaikhoan,
		idtrangthai
	)
	values
	(
		@idlop,
		@idtaikhoan,
		@idtrangthai
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
@idnhom int,
@idtaikhoan int,
@idtrangthai int
as
begin
	update tblSinhVien
	set
		idlop = @idlop,
		idtaikhoan = @idtaikhoan,
		idtrangthai = @idtrangthai
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
--
if object_id('sp_tblSinhVien_FindDSMotMonHoc')is not null
	drop proc sp_tblSinhVien_FindDSMotMonHoc
go
create procedure sp_tblSinhVien_FindDSMotMonHoc
(
	@tenmonhoc nvarchar(100)
)
as
begin
	select a.tenmonhoc, g.tentaikhoan, g.hoten, d.tenlop, e.tenkhoa, f.tenhocky
	from tblMonHoc a
		inner join tblKetQua b on b.idmonhoc = a.id
		inner join tblSinhVien c on b.idsinhvien = c.id
		inner join tblLop d on c.idlop = d.id
		inner join tblKhoa e on d.idkhoa = e.id
		inner join tblHocKy f on a.idhocky = f.id
		inner join tblTaiKhoan g on c.idtaikhoan = g.id
	where a.tenmonhoc = @tenmonhoc
end
go
--exec sp_tblSinhVien_FindDSMotMonHoc 'Phân tích hệ thống thông tin'
--14 Giao Vien
--
if object_id('sp_tblGiaoVien_SelectAll')is not null
	drop proc sp_tblGiaoVien_SelectAll
go
create procedure sp_tblGiaoVien_SelectAll
as
begin
	select tgv.id, tgv.idchucvu, tgv.idlop, tgv.idkhoa, tgv.idmonhoc, tgv.idtaikhoan from tblGiaoVien as tgv
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
	select tgv.id, tgv.idchucvu, tgv.idlop, tgv.idkhoa, tgv.idmonhoc, tgv.idtaikhoan from tblGiaoVien as tgv
	where id = @id
end
go
--
if object_id('sp_tblGiaoVien_Insert')is not null
	drop proc sp_tblGiaoVien_Insert
go
create procedure sp_tblGiaoVien_Insert
@idchucvu int,
@idlop int,
@idkhoa int,
@idmonhoc int,
@idtaikhoan int
as
begin
	insert into tblGiaoVien
	(
		idchucvu,
		idlop,
		idkhoa,
		idmonhoc,
		idtaikhoan

	)
	values
	(
		@idchucvu,
		@idlop,
		@idkhoa,
		@idmonhoc,
		@idtaikhoan
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
@idlop int,
@idkhoa int,
@idmonhoc int,
@idtaikhoan int
as
begin
	update tblGiaoVien
	set
		idchucvu = @idchucvu,
		idlop = @idlop,
		idkhoa = @idkhoa,
		idmonhoc = @idmonhoc,
		idtaikhoan = @idtaikhoan
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

--
--12 Ket qua
--
if object_id('sp_tblKetQua_SelectAll')is not null
	drop proc sp_tblKetQua_SelectAll
go
create procedure sp_tblKetQua_SelectAll
as
begin
	select tkq.id, tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
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
	select tkq.id, tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
	where id = @id
end
go
--
if object_id('sp_tblKetQua_View')is not null
	drop proc sp_tblKetQua_View
go
create procedure sp_tblKetQua_View
as
begin
	select a.id, a.tentaikhoan, a.hoten, c.tenlop, e.tenmonhoc, f.tenchuongtrinh, g.tenhocky, d.diemthilan1, d.diemthilan2, d.diemtongket, d.diemtrungbinh	
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblChuongTrinh f on e.idchuongtrinh = f.id
		inner join tblHocKy g on e.idhocky = f.id
	order by a.id asc
end
go
--
if object_id('sp_tblKetQua_MonHocSinhVien')is not null
	drop proc sp_tblKetQua_MonHocSinhVien
go
create procedure sp_tblKetQua_MonHocSinhVien
as
begin
	select a.id, a.tentaikhoan, a.hoten, c.tenlop, g.tenkhoa ,e.tenmonhoc, f.tenchuongtrinh, h.tenhocky, d.diemthilan1, d.diemthilan2, ROUND(d.diemtrungbinh,5) as 'diemtrungbinh' , b.id as 'idsinhvien', c.id as 'idlop',
	c.malop, c.siso, d.ghichu, d.hanhkiem, d.id as 'idketqua', e.id as 'idmonhoc', e.mamonhoc, e.idtinchi,
	f.id as 'idchuongtrinh', f.idtrangthai, f.machuongtrinh, g.id as 'idkhoa', g.makhoa, g.sodienthoai, h.id as 'idhocky', h.mahocky
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblChuongTrinh f on e.idchuongtrinh = f.id
		inner join tblKhoa g on c.idkhoa = g.id
		inner join tblHocKy h on e.idhocky = h.id
	order by a.id
end
go
--exec sp_tblKetQua_MonHocSinhVien
if object_id('sp_tblKetQua_BangtotNghiepSinhVien')is not null
	drop proc sp_tblKetQua_BangtotNghiepSinhVien
go
create procedure sp_tblKetQua_BangtotNghiepSinhVien
(
	@hoten nvarchar(100)
)
as
begin
	select distinct a.hoten, h.nambatdau, h.namketthuc, d.hanhkiem
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblChuongTrinh f on e.idchuongtrinh = f.id
		inner join tblHocKy g on e.idhocky = f.id
		inner join tblNienKhoa h on c.idnienkhoa = h.id
	where hoten = @hoten
end
go
--exec sp_tblKetQua_BangtotNghiepSinhVien 'Huy'
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
---------------------Windows Form---------

---------------------Search---------------------
--
if object_id('sp_tblMonHoc_FindDanhSachSinhVien')is not null
	drop proc sp_tblMonHoc_FindDanhSachSinhVien
go
create procedure sp_tblMonHoc_FindDanhSachSinhVien
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.mamonhoc, a.tenmonhoc, d.tentaikhoan, d.hoten
	from tblMonHoc a
		inner join tblKetQua b on a.id = b.idmonhoc
		inner join tblSinhVien c on a.id = b.idsinhvien
		inner join tblTaiKhoan d on c.idtaikhoan = d.id
	where a.mamonhoc like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindKetQuaMonHocSinhVienID')is not null
	drop proc sp_tblSinhVien_FindKetQuaMonHocSinhVienID
go
create procedure sp_tblSinhVien_FindKetQuaMonHocSinhVienID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select distinct a.tentaikhoan, a.hoten, c.tenlop, e.tenmonhoc, f.tenchuongtrinh, d.diemthilan1, d.diemthilan2, d.diemtongket, d.diemtrungbinh
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblChuongTrinh f on e.idchuongtrinh = f.id
	where a.tentaikhoan like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindKetQuaMonHocSinhVienName')is not null
	drop proc sp_tblSinhVien_FindKetQuaMonHocSinhVienName
go
create procedure sp_tblSinhVien_FindKetQuaMonHocSinhVienName
(
	@hoten nvarchar(100)
)
as
begin
	--set @keyword = Ltrim(Rtrim(@keyword))
	select a.id, a.tentaikhoan, a.hoten, c.tenlop, g.tenkhoa, e.tenmonhoc, h.tenchuongtrinh, f.tenhocky, d.diemthilan1, d.diemthilan2, ROUND(d.diemtrungbinh,5) as 'diemtrungbinh', ROUND(d.diemtongket,5) as 'diemtongket' 
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblHocKy f on e.idhocky = f.id
		inner join tblKhoa g on c.idkhoa = g.id
		inner join tblChuongTrinh h on e.id = h.id
	where a.hoten = @hoten --like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_ViewKetQuaMonHocSinhVien')is not null
	drop proc sp_tblSinhVien_ViewKetQuaMonHocSinhVien
go
create procedure sp_tblSinhVien_ViewKetQuaMonHocSinhVien
as
begin
	select a.id, a.tentaikhoan, a.hoten, c.tenlop, g.tenkhoa, e.tenmonhoc, h.tenchuongtrinh, f.tenhocky, d.diemthilan1, d.diemthilan2, ROUND(d.diemtrungbinh,5) as 'diemtrungbinh', ROUND(d.diemtongket,5) as 'diemtongket' 
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblHocKy f on e.idhocky = f.id
		inner join tblKhoa g on c.idkhoa = g.id
		inner join tblChuongTrinh h on e.id = h.id
end
go
--exec sp_tblSinhVien_FindKetQuaMonHocSinhVienName 'Huy'
if object_id('sp_tblChuongTrinh_FindDanhSachMonHocID')is not null
	drop proc sp_tblChuongTrinh_FindDanhSachMonHocID
go
create procedure sp_tblChuongTrinh_FindDanhSachMonHocID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.machuongtrinh, a.tenchuongtrinh, b.tenmonhoc
	from tblChuongTrinh a
		inner join tblMonHoc b on a.id = b.idchuongtrinh
	where a.machuongtrinh like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblChuongTrinh_FindDanhSachMonHocName')is not null
	drop proc sp_tblChuongTrinh_FindDanhSachMonHocName
go
create procedure sp_tblChuongTrinh_FindDanhSachMonHocName
(
	@tenchuongtrinh nvarchar(100)
)
as
begin
	select e.hoten, g.tenkhoa, f.tenchucvu, a.machuongtrinh, a.tenchuongtrinh, b.tenmonhoc, c.sotinchi
	from tblChuongTrinh a
		inner join tblMonHoc b on b.idchuongtrinh = a.id
		inner join tblTinChi c on b.idtinchi = c.id
		inner join tblGiaoVien d on d.idmonhoc = b.id
		inner join tblTaiKhoan e on d.idtaikhoan = e.id
		inner join tblChucVu f on d.idchucvu = f.id
		inner join tblKhoa g on d.idkhoa = g.id
	where tenchuongtrinh = @tenchuongtrinh--like + '%' + @keyword + '%'
end
go
--exec sp_tblChuongTrinh_FindDanhSachMonHocName '24'
if object_id('sp_tblChuongTrinh_ViewTenDanhSachMonHoc')is not null
	drop proc sp_tblChuongTrinh_ViewTenDanhSachMonHoc
go
create procedure sp_tblChuongTrinh_ViewTenDanhSachMonHoc
as
begin
	select a.machuongtrinh, a.tenchuongtrinh, b.tenmonhoc, c.sotinchi
	from tblChuongTrinh a
		inner join tblMonHoc b on b.idchuongtrinh = a.id
		inner join tblTinChi c on b.idtinchi = c.id
end
go
--exec sp_tblChuongTrinh_ViewTenDanhSachMonHoc
if object_id('sp_tblTaiKhoan_FindDSSVCuaMonHoc')is not null
	drop proc sp_tblTaiKhoan_FindDSSVCuaMonHoc
go
create procedure sp_tblTaiKhoan_FindDSSVCuaMonHoc
(
	@tenmonhoc nvarchar(100)
)
as
begin
	select d.tenmonhoc, a.tentaikhoan, a.hoten, e.tenlop, f.tenkhoa
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblKetQua c on c.idsinhvien = b.id
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblLop e on b.idlop = e.id
		inner join tblKhoa f on e.idkhoa = f.id
	where tenmonhoc = @tenmonhoc
end
go
--exec sp_tblTaiKhoan_FindDSSVCuaMonHoc N'Lập trình ứng dụng Android'
if object_id('sp_tblTaiKhoan_FindKQSVTrongCTDT')is not null
	drop proc sp_tblTaiKhoan_FindKQSVTrongCTDT
go
create procedure sp_tblTaiKhoan_FindKQSVTrongCTDT
(
	@hoten nvarchar(100)
)
as
begin
	select a.tentaikhoan, a.hoten, c.tenlop, h.tenkhoa, e.tenmonhoc, f.tenchuongtrinh, i.sotinchi, d.diemthilan1, d.diemthilan2, round(d.diemtrungbinh,5) as diemtrungbinh
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblKetQua d on b.id = d.idsinhvien
		inner join tblMonHoc e on d.idmonhoc = e.id
		inner join tblChuongTrinh f on e.idchuongtrinh = f.id
		inner join tblHocKy g on e.idhocky = f.id
		inner join tblKhoa h on c.idkhoa = h.id
		inner join tblTinChi i on e.idtinchi = i.id
	where hoten = @hoten
end
go
--exec sp_tblTaiKhoan_FindKQSVTrongCTDT N'Huy'
--S select * from tblChuongTrinh
if object_id('sp_tblTaiKhoan_FindUserID')is not null
	drop proc sp_tblTaiKhoan_FindUserID
go
create procedure sp_tblTaiKhoan_FindUserID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.tentaikhoan, a.hoten, a.namsinh, a.gioitinh, a.diachi, a.email, a.dienthoai
	from tblTaiKhoan a
	where tentaikhoan like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblTaiKhoan_FindUserName')is not null
	drop proc sp_tblTaiKhoan_FindUserName
go
create procedure sp_tblTaiKhoan_FindUserName
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.tentaikhoan, a.hoten, a.namsinh, a.gioitinh, a.diachi, a.email, a.dienthoai
	from tblTaiKhoan a
	where a.hoten like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindID')is not null
	drop proc sp_tblSinhVien_FindID
go
create procedure sp_tblSinhVien_FindID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.tentaikhoan, a.hoten, c.tenlop, d.tentrangthai, a.namsinh, a.gioitinh, a.namsinh, a.diachi
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblTrangThai d on b.idtrangthai = d.id
	where a.tentaikhoan like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindName')is not null
	drop proc sp_tblSinhVien_FindName
go
create procedure sp_tblSinhVien_FindName
@keyword nvarchar(50)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.tentaikhoan, a.hoten, c.tenlop, d.tentrangthai, a.namsinh, a.gioitinh, a.namsinh, a.diachi
	from tblTaiKhoan a
		inner join tblSinhVien b on b.idtaikhoan = a.id
		inner join tblLop c on b.idlop = c.id
		inner join tblTrangThai d on b.idtrangthai = d.id
	where a.hoten like '%' + @keyword + '%'
end
go

---------Check Web-------------------------
--
if object_id('sp_checkAccountGroup')is not null
	drop proc sp_checkAccountGroup
go
create procedure sp_checkAccountGroup
@username nvarchar(100),
@passuser nvarchar(100)
as
begin
	declare @nhom nvarchar(15)
	set @nhom = (select b.tennhom 
					from tblTaiKhoan a 
					inner join tblNhom b on a.idnhom = b.id
					where tentaikhoan=@username and matkhau=@passuser)
	if(@nhom = N'Quản Trị Viên')
		return 0;
	else if(@nhom = N'Quản Lý Viên')
		return 1;
	else if(@nhom = N'Giảng Viên')
		return 2;
	else
		return 3;
end
----
--if object_id('sp_login')is not null
--	drop proc sp_login
--go
--create procedure sp_login
--@username nvarchar(100),
--@pass nvarchar(100)
--as
--begin
--declare @id int;
--set @id = (select id from tblTaiKhoan where tentaikhoan=@username and matkhau=@pass)
--if(isnull(@id,0)>0)
--return @id;
--else
--return -1;
--end
----
--if object_id('sp_getSinhVienID')is not null
--	drop proc sp_getSinhVienID
--go
--create proc sp_getSinhVienID
--@username nvarchar(100)
--as
--begin
--declare @id int;
--set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
--if(isnull(@id,0)>0)
--return @id;
--else
--return -1;
--end
----
--if object_id('sp_getGiaoVienID')is not null
--	drop proc sp_getGiaoVienID
--go
--create proc sp_getGiaoVienID
--@username nvarchar(100)
--as
--begin
--declare @id int;
--set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
--if(isnull(@id,0)>0)
--return @id;
--else
--return -1;
--end
----
--if object_id('sp_getQuanLyVienID')is not null
--	drop proc sp_getQuanLyVienID
--go
--create proc sp_getQuanLyVienID
--@username nvarchar(100)
--as
--begin
--declare @id int;
--set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
--if(isnull(@id,0)>0)
--return @id;
--else
--return -1;
--end
----
--if object_id('sp_LoginSV')is not null
--	drop proc sp_LoginSV
--go
--create proc sp_LoginSV
--@username nvarchar(50),
--@password nvarchar(10)
--as
--begin
--Select tentaikhoan, matkhau 
--from tblTaiKhoan 
--Where tentaikhoan = @username AND matkhau = @password 
--end
--go
----change pass
--if object_id('sp_changePassword')is not null
--	drop proc sp_changePassword
--go
--create proc sp_changePassword
--@tentaikhoan nvarchar(100),
--@passcu nvarchar(100),
--@passmoi nvarchar(100)
--as
--begin
--	declare @pass nvarchar(100);
--	set @pass = (select matkhau from tblTaiKhoan where tentaikhoan=@tentaikhoan)
--	if(@pass = @passcu)
--	begin
--		update tblTaiKhoan set matkhau = @passmoi where tentaikhoan = @tentaikhoan;
--		return @@rowcount;
--	end
--	else
--		return -1;
--end




