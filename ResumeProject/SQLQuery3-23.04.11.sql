-- Procedure ile veri �ekme i�lemi ger�ekle�tirebiliriz
-- Procedure sonucunda sadece bir de�er de gelebilir
--illa komple bir tablonun gelmesine ihtiyac�m�z yok
--veya komple bir tablo da gelebilir, bize kalm��.

--Select * From TblContact 
--B�t�n kay�tlar� getirir

--Select COUNT(*) From TblContact
--TblContact tablosu i�erisindeki toplam mesaj say�s�n� getirir

--Select COUNT(*) From TblContact where Subject=1
--1 yani Te�ekk�r t�r�ndeki mesaj say�s�n� getirir

--Select COUNT(*) From TblContact where Subject=3
--3 numaral� de�er t�r�ndeki mesaj say�s�n� getirir

--Select COUNT(*) From TblContact where Subject=(Select CategoryID From TblCategory where CategoryName='Proje Talebi')
--Select * From TblCategory where CategoryName='Proje Talebi'

--Create Procedure CountProjeTalebi
--As
--Select COUNT(*) From TblContact where Subject=(Select CategoryID From TblCategory where CategoryName='Proje Talebi')
-- Olu�turulan Procedure Konumu
-- Programmability -> Stored Procedures