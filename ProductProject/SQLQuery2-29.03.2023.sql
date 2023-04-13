--Use DbProduct

-- T-SQL

--Select 5+8
--Declare @number int
----Select @number
--Set @number=234
----Select @number
--Select @number 'Sonuç'

--Karede Alan ve Çevre
--declare @kenar int,@sonuc int
--declare @kenar int
--Declare @alan int
--declare @cevre int
--set @kenar=20
--Set @alan=@kenar*@kenar
--Set @cevre=@kenar*4
--Select @kenar 'Kenar',@alan 'Alan',@cevre 'Çevre'

--Employee Tablosundaki maaþlarýn toplamýný bir deðiþkene atayýp ardýndan bu deðiþkenin 3 katýný hesaplayan sorguyu yazýn.
--Declare @test int
--Set @test = (Select Sum(EmployeeSalary) From TblEmployee)
--Select @test*3

--if else (Trigger lar ve Procedure lerde mutlaka karþýlaþýrýz)

--Declare @sayi int
--set @sayi=5
--if(@sayi=5)
--Select 'Sayý doðru'
--else
--Select 'Sayý yanlýþ'

--set @sayi=8
--if(@sayi=5)
--Select 'Sayý doðru'
--else
--Select 'Sayý yanlýþ'

--Procedure (Uzun SQL sorgularýný tek bir kelime altýnda toplamaya yarar)
--Metot (týpký programlamadaki metotlara benzer)
--Create Alter Drop (DDL komutlarýyla oluþturulur)
--Create Proc (Böyle de çalýþýr)
--Create Procedure Pro1
--As
--Select EmployeeName,EmployeeSurname,DepartmentName From TblEmployee
--Inner Join TblDepartment
--On TblEmployee.EmployeeDepartment=TblDepartment.DepartmentID

--Exec Pro1 (Böyle de çalýþýr)
--Execute Pro1
--Pro1 (Sadece ismini yazýnca da çalýþýyor)

--Create Proc Pro2
--As
--Select * From TblEmployee where EmployeeDepartment=(Select DepartmentID From TblDepartment where DepartmentName='Yazýlým') or EmployeeCity='Bursa'

--Exec Pro2
-- (Parametreli prosedürler var ama onlar biraz daha sonra anlatýlacak)

--Triggers (Tetikleyiciler) (Bir olayýn sonucunun baþka bir olayý etkilemesi)
--Create Table TblTest
--(
--TotalStock int
--)

--ürün tablosundaki kayýt sayýsýný test tablosuna totalstock sütununa gönderelim
--Select * From TblProduct
--Select Count(*) From TblProduct
--Declare @toplam int
--Set @toplam=(Select Count(*) From TblProduct)
--insert into TblTest (TotalStock) Values (@toplam)
--Select * From TblTest
----Select * From DbProduct.dbo.TblTest

--ürün tabloma yeni bir ürün giriþi yaptýkça totalstock deðeri artacak
--Create Trigger Arttir --(ürün tablosuna bir iþlem yapýldýðý zaman tetiklenecek)
--On TblProduct --(üzerinde çalýþýlan iþlem yapýlan tablo)
--After Insert --(hangi iþlemden sonra, ne zaman çalýþacak)
--As
--Update TblTest Set TotalStock+=1

--Select * From TblTest

--Select * From TblProduct
--Delete From TblProduct Where ProductID=12
--Update TblTest Set TotalStock=(Select COUNT(*) From TblProduct)

--Create Trigger Azalt
--On TblProduct --(Hangi tablo üzerinde çalýþacak)
--After Delete --(Ne zaman çalýþacak, hangi iþlemden sonra)
--As
--Update TblTest Set TotalStock-=1

--Select * From TblTest

--Delete From TblProduct where ProductID=12

--(UDEMY'deki SQL kursu bitirilecek)
--(Viewlar, Fonksiyonlar, Joblar ilerleyen kýsýmlarda mvc core da ihtiyacýmýz oldukça öðrenilecek)
