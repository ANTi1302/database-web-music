-----Store
----1
select *from[dbo].[BaiNhac]

declare @maBH int,@n int,@nam int
set @maBH='002';
set @nam=2002
set @n=(
		select count(*)
		from [dbo].[BaiNhac]
		where [maBaiHat]=@maBH and YEAR([namPH])=@nam)
if @n>0
print N'Bài hát có mã '+cast(@maBH as nvarchar(5))+ N' có phát hành trong năm 2001'
else
print N'Bài hát có mã '+cast(@maBH as nvarchar(5))+ N' không có phát hành trong năm 2001'

-----2
go
declare @tongsoBH int,@macs int
set @macs ='003';
set @tongsoBH=(select COUNT(*)
				from[dbo].[CaSi]
				where [maCS]=@macs)

if @tongsoBH>5
print N'Ca sĩ 003 có hơn 5 sản phẩm'
else
print N'Ca sĩ 003 có ít hơn sản phẩm'

go

----3
------Proc
CREATE proc [dbo].[get_baihat](@id nvarchar(50))
as begin
if(@id!=0)
select * from [dbo].[BaiNhac] where @id=maBaiHat
else select * from [dbo].[BaiNhac]
end
GO
----thực thi
EXEC [dbo].[get_baihat] 0;

----4
CREATE PROC usp_timSLBaiHat
(
    @mCS nvarchar(50),
    @soLuongBaiHat_count INT OUTPUT
) AS
BEGIN
    SELECT 
        [maCS],[hoTenCS],[soLuongBH]
    FROM
        [dbo].[CaSi]
    WHERE
         [maCS]= @mCS;

    SELECT @soLuongBaiHat_count = @@ROWCOUNT;
END;
go

---5
create proc sp_CaSiTheoNamDebut @year int,@count int output
as 
select @count=count(*) from[dbo].[CaSi]
where datepart(YY,[ngayDebut])=@year
go
---thực thi
declare @maCS int
exec sp_CaSiTheoNamDebut 2000,@maCS output
print @maCS
go
------6
create proc sp_CaSiNu
as
select *from[dbo].[CaSi]
where [gioiTinh]=N'Nữ'
----thực thi
exec sp_CaSiNu
go

---7
create proc sp_CaSiNam
as
select *from[dbo].[CaSi]
where [gioiTinh]=N'Nam'
----thực thi
exec sp_CaSiNam
go
---8
create proc sp_CaSiSLBaiHat
as
select *from[dbo].[CaSi]
where [soLuongBH]>60
----thực thi
exec sp_CaSiSLBaiHat
go
---9
create proc sp_BaiHat
as
begin
declare @maBH int,@n int,@nam int
set @maBH='002';
set @nam=2002
set @n=(
		select count(*)
		from [dbo].[BaiNhac]
		where [maBaiHat]=@maBH and YEAR([namPH])=@nam)
if @n>0
print N'Bài hát có mã '+cast(@maBH as nvarchar(5))+ N' có phát hành trong năm 2001'
else
print N'Bài hát có mã '+cast(@maBH as nvarchar(5))+ N' không có phát hành trong năm 2001'

end
----thực thi
exec sp_BaiHat
go
-----10
create proc sp_CaSiTheoSoBaiHat
as
begin
declare @tongsoBH int,@macs int
set @macs ='003';
set @tongsoBH=(select COUNT(*)
				from[dbo].[CaSi]
				where [maCS]=@macs)

if @tongsoBH>5
print N'Ca sĩ 003 có hơn 5 sản phẩm'
else
print N'Ca sĩ 003 có ít hơn sản phẩm'

end
-----thực thi
exec sp_CaSiTheoSoBaiHat

go
-----11
create proc sp_CaSiTheoNamSinh @year int
as 
select * from[dbo].[CaSi]
where datepart(YY,[ngaySinh])=@year
go
----thực thi
select *from[dbo].[CaSi]
exec sp_CaSiTheoNamSinh 1990
go




-----Trigger
----1
create trigger Update_Baihat
on [dbo].[BinhLuan]
for update
as
begin
	if not exists(select * from inserted i inner join deleted d on i.[maBaiHat]=d.[maBaiHat] where i.[maBaiHat]=d.[maBaiHat])
	begin
		print N'Mã bài hát khác null'
		rollback tran
	end
SELECT BaiNhac.maBaiHat, BaiNhac.tenBaiHat, UserMusic.HoTen, BinhLuan.noiDung
FROM     BaiNhac INNER JOIN
                  BinhLuan ON BaiNhac.maBaiHat = BinhLuan.maBaiHat INNER JOIN
                  UserMusic ON BinhLuan.maND = UserMusic.userID
GROUP BY BaiNhac.maBaiHat, BaiNhac.tenBaiHat, UserMusic.HoTen, BinhLuan.noiDung

end

---thực thi
update [dbo].[BinhLuan] set [noiDung]=N'Không hay lắm!'
where  [maBaiHat]=002

----2
go
create trigger utr_InsertBaiNhac
on[dbo].[BaiNhac]
for insert,update
as
begin
	print N'Bạn đã cập nhật'
	rollback tran
end

-------3
go
create trigger utr_DeleteCaSi
on[dbo].[CaSi]
for delete
as
begin
	declare @count int=0
	select @count= count(*) from deleted
	where YEAR(getdate())- year(deleted.ngayDebut)>20
	if(@count>0)
	begin
	print N'Không được xóa ca sĩ có năm debut 20 năm'
	rollback tran
	end
end
-----thực thi
select * from[dbo].[CaSi]

delete [dbo].[CaSi] where [maCS]=007

-----4
go 
create trigger check_AgeCaSi
on[dbo].[CaSi]
for update
as
begin
	if exists(select *from inserted i inner join deleted d
	on i.maCS=d.maCS
	where YEAR(d.ngaySinh)>year(i.ngaySinh))
	begin
		print N'Tuổi không thể nhỏ tuổi trước đó'
		rollback tran
		end
end
----thực thi
select *from[dbo].[CaSi]
update [dbo].[CaSi] set [ngaySinh]='3/12/2006' where[maCS]=007

---5
go
create trigger Create_Bang
on database
for Create_Table
as
begin
print N'Bạn không được tạo bảng ở đây'
rollback
end