--Use DbProduct

-- T-SQL

--Select 5+8
--Declare @number int
----Select @number
--Set @number=234
----Select @number
--Select @number 'Sonu�'

--Karede Alan ve �evre
--declare @kenar int,@sonuc int
--declare @kenar int
--Declare @alan int
--declare @cevre int
--set @kenar=20
--Set @alan=@kenar*@kenar
--Set @cevre=@kenar*4
--Select @kenar 'Kenar',@alan 'Alan',@cevre '�evre'

--Employee Tablosundaki maa�lar�n toplam�n� bir de�i�kene atay�p ard�ndan bu de�i�kenin 3 kat�n� hesaplayan sorguyu yaz�n.
--Declare @test int
--Set @test = (Select Sum(EmployeeSalary) From TblEmployee)
--Select @test*3

--if else (Trigger lar ve Procedure lerde mutlaka kar��la��r�z)

--Declare @sayi int
--set @sayi=5
--if(@sayi=5)
--Select 'Say� do�ru'
--else
--Select 'Say� yanl��'

--set @sayi=8
--if(@sayi=5)
--Select 'Say� do�ru'
--else
--Select 'Say� yanl��'

--Procedure (Uzun SQL sorgular�n� tek bir kelime alt�nda toplamaya yarar)
--Metot (t�pk� programlamadaki metotlara benzer)
--Create Alter Drop (DDL komutlar�yla olu�turulur)
--Create Proc (B�yle de �al���r)
--Create Procedure Pro1
--As
--Select EmployeeName,EmployeeSurname,DepartmentName From TblEmployee
--Inner Join TblDepartment
--On TblEmployee.EmployeeDepartment=TblDepartment.DepartmentID

--Exec Pro1 (B�yle de �al���r)
--Execute Pro1
--Pro1 (Sadece ismini yaz�nca da �al���yor)

--Create Proc Pro2
--As
--Select * From TblEmployee where EmployeeDepartment=(Select DepartmentID From TblDepartment where DepartmentName='Yaz�l�m') or EmployeeCity='Bursa'

--Exec Pro2
-- (Parametreli prosed�rler var ama onlar biraz daha sonra anlat�lacak)

--Triggers (Tetikleyiciler) (Bir olay�n sonucunun ba�ka bir olay� etkilemesi)
--Create Table TblTest
--(
--TotalStock int
--)

--�r�n tablosundaki kay�t say�s�n� test tablosuna totalstock s�tununa g�nderelim
--Select * From TblProduct
--Select Count(*) From TblProduct
--Declare @toplam int
--Set @toplam=(Select Count(*) From TblProduct)
--insert into TblTest (TotalStock) Values (@toplam)
--Select * From TblTest
----Select * From DbProduct.dbo.TblTest

--�r�n tabloma yeni bir �r�n giri�i yapt�k�a totalstock de�eri artacak
--Create Trigger Arttir --(�r�n tablosuna bir i�lem yap�ld��� zaman tetiklenecek)
--On TblProduct --(�zerinde �al���lan i�lem yap�lan tablo)
--After Insert --(hangi i�lemden sonra, ne zaman �al��acak)
--As
--Update TblTest Set TotalStock+=1

--Select * From TblTest

--Select * From TblProduct
--Delete From TblProduct Where ProductID=12
--Update TblTest Set TotalStock=(Select COUNT(*) From TblProduct)

--Create Trigger Azalt
--On TblProduct --(Hangi tablo �zerinde �al��acak)
--After Delete --(Ne zaman �al��acak, hangi i�lemden sonra)
--As
--Update TblTest Set TotalStock-=1

--Select * From TblTest

--Delete From TblProduct where ProductID=12

--(UDEMY'deki SQL kursu bitirilecek)
--(Viewlar, Fonksiyonlar, Joblar ilerleyen k�s�mlarda mvc core da ihtiyac�m�z olduk�a ��renilecek)
