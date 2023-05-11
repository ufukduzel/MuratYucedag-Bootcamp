-- Procedure ile veri çekme iþlemi gerçekleþtirebiliriz
-- Procedure sonucunda sadece bir deðer de gelebilir
--illa komple bir tablonun gelmesine ihtiyacýmýz yok
--veya komple bir tablo da gelebilir, bize kalmýþ.

--Select * From TblContact 
--Bütün kayýtlarý getirir

--Select COUNT(*) From TblContact
--TblContact tablosu içerisindeki toplam mesaj sayýsýný getirir

--Select COUNT(*) From TblContact where Subject=1
--1 yani Teþekkür türündeki mesaj sayýsýný getirir

--Select COUNT(*) From TblContact where Subject=3
--3 numaralý deðer türündeki mesaj sayýsýný getirir

--Select COUNT(*) From TblContact where Subject=(Select CategoryID From TblCategory where CategoryName='Proje Talebi')
--Select * From TblCategory where CategoryName='Proje Talebi'

--Create Procedure CountProjeTalebi
--As
--Select COUNT(*) From TblContact where Subject=(Select CategoryID From TblCategory where CategoryName='Proje Talebi')
-- Oluþturulan Procedure Konumu
-- Programmability -> Stored Procedures