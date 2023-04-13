--DML (Data Manipulation Language) (Veri Yap�land�rma)
--DDL (Data Definition Language) (Veri Tan�mlama)

--DML --> Sorgu (�zerinde �al���r)
--DDL --> Tablo, Veri Taban�, Prosed�r, Fonk... (�zerinde �al���r)

--DML
--Select, Insert, Update, Delete (Crud) (Crud yap�s� -> Create,Read,Update,Delete)

--Select
--Select ColumnName1, ColumnName2 ... , ColumnNameN From TableName
-- * (All)

--Select
--Select * From TblCategory
--(Ctrl + Space tu�lar�na bas�nca b�t�n komutlar geliyor)
--(iki tane - ilgili sat�r� a��klama sat�r�na d�n��t�r�r)

--Select CategoryName From TblCategory

--Where --> if else

--Neden tek t�rnak? -->
--Varchar, nvarchar, nchar, char
--Karakter --> Char --> ' '

--Select * From TblProduct where ProductName='�t�'
--Select * From TblProduct where ProductName='Buzdolab�'
--Select * From TblProduct where ProductName='Buzdolabi' --(�r�n yoksa bo� d�ner)

--Select * From TblProduct where ProductID=4
--Select * From TblProduct where ProductID='5' --(B�yle kullan�m� C# da hata verir)
--Select * From TblProduct where ProductID=5

--Select * From TblProduct where ProductName=�t� --(Bilinmiyor syntax hatas� verir)
--Select * From TblProduct where ProductName='�t�'
--Select * From TblProduct where ProductID=9

--Select * From TblCategory where CategoryStatus=True --(Syntax hatas� verir)
--Select * From TblCategory where CategoryStatus='True'
--Select * From TblCategory where CategoryStatus=1

--Select * From TblProduct where ProductStock=100

--Operat�rler, Atama=
--Karakter Atama Operat�r� ' '
--> < >= <= * - + / %

--Select * From TblProduct where ProductStock>120
--Select * From TblProduct where ProductStock!=100
--Select * From TblProduct where ProductStock<=100

--And Or
--And && (Ampersand i�areti, gemici d���m� olarak ge�iyor)
--Or || (D�z �izgi)

--Select * From TblProduct where ProductStock>100 and SalePrice<6000
--Model>2015 and renk=siyah and Durumu=2.El ve Vites=Otomatik ve...
--Select * From TblProduct where ProductStock<150 and PurchasePrice>1500 and SalePrice<10000
--Select * From TblProduct where ProductStock<100 or SalePrice>5000

--Aggregate (Gruplama K�meleme Gibi)
--Count Avg Sum - Min Max

--Count
--Select Count(*) From TblName where ...
--Select * From TblProduct
--Select Count(*) 'Toplam �r�n Say�s�' From TblProduct
--Alias - Takma Ad - Mahlas
--Select * From TblProduct where ProductStock>100
--Select Count(*) From TblProduct where ProductStock>100
--Select * From TblProduct where ProductStock>=100
--Select Count(*) From TblProduct where ProductStock>=100

--Sum : Bir s�tuna ait toplam sonu�
--Select ProductStock From TblProduct
--Select Sum(ProductStock) 'Depodaki �r�n Say�s�' From TblProduct

--Select ProductStock From TblProduct where ProductName='Buzdolab�' or ProductName='�ama��r Makinesi'
--Select Sum(ProductStock) 'Depodaki Buzdolab� ve �ama��r Makinesi Say�s�' From TblProduct where ProductName='Buzdolab�' and ProductName ='�ama��r Makinesi'
--Select Sum(ProductStock) 'Depodaki Buzdolab� ve �ama��r Makinesi Say�s�' From TblProduct where ProductName='Buzdolab�' or ProductName ='�ama��r Makinesi'



--Use DbProduct
--Select * From TblProduct

--Avg (Ortalama)
--Select * From TblProduct
--Select Avg(ProductStock) 'Ortalama Stok Say�s�' From TblProduct

--Kaggle (Web sitesini dersten sonra inceleyin) (�cretsiz veri seti bulunabilir)

--Select ProductStock From TblProduct Where ProductStock >=100
--Select Avg(ProductStock) From TblProduct Where ProductStock >=100
--Select Avg(ProductStock),Count(*),Sum(ProductStock) From TblProduct Where ProductStock>=100
--Select Avg(ProductStock) 'Ortalama Stok Say�s�',Count(*) '�r�n Say�s�',Sum(ProductStock) '�r�n Toplam Stok Say�s�' From TblProduct Where ProductStock>=100
--Select 730/6 --(D�n���mler uygulayarak bunlar� ondal�kl� formata getirebiliriz)
--Select 720/6
--Select 25*98

--Min Max
--Select ProductStock From TblProduct
--Select Min(ProductStock),Max(ProductStock) From TblProduct

-- ProductStock say�s� en d���k �r�n� bulmak isteseydik, (SubQuery alt sorgu yolu)
-- Select * From TblProduct Where ProductStock=(Select Min(ProductStock) From TblProduct) 

--Tools -> Options -> Text Editor -> All Languages -> Word Wrap (Alt sat�ra kayd�r)
--Edit -> Advanced -> Word Wrap (�kinci yolu)

--Sub Query (alt sorgu)
--sorgu1 = sorgu2 = sorgu3 = ... SorguN
--Composit Design Pattern anlat�l�rken (alt sorgular yap�s�yla ili�kili)

--SQL de sorgu ekran� a��ld�ktan sonra yeni bir s�tun eklenirse SQL bunu g�stermez

--Select * From TblProduct where ProductCategory=1
--Select * From TblProduct where ProductCategory=2
--Select * From TblProduct where ProductCategory=3
--Select * From TblProduct where ProductCategory=1
----Select * From TblProduct where ProductCategory='Beyaz E�ya'
--Select * From TblProduct where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz E�ya')

--�r�n tablosu i�inde en y�ksek sto�a sahip �r�n�n ad�n� getiren sorgu
--Select * From TblProduct
--Select ProductName From TblProduct where ProductStock=(Select max(ProductStock) from TblProduct)

--Like (Arama i�lemi yapmay� sa�lar)
--Select * From TblProduct 
--Select * From TblProduct Where ProductName like '%e%' --(��inde e ge�enler)
--Select * From TblProduct Where ProductName like 'a%' --(a ile ba�layanlar)
--Select * From TblProduct Where ProductName like '%i' --(i ile bitenler)
--Select * From TblProduct Where ProductName not like '%e%' --(i�inde e harfi ge�meyenler)

--DML Insert
--Insert Into, Insert into, Insert intO (b�y�k k���k harf duyarl�l��� yok)
--Insert into TblName (Column1,Column2...) Values (Value1,Value2...)
--insert into TblCategory (CategoryID,CategoryName,CategoryStatus) Values (6,'K�rtasiye',1)
--Select * From TblCategory

--Delete from TblCategory where CategoryID=6
--https://stackoverflow.com/questions/36859306/the-row-values-updated-or-deleted-either-do-not-make-the-row-unique-or-they-alte

--insert into TblProduct (ProductName,ProductStock,PurchasePrice,SalePrice,ProductCategory) Values ('Kettle',120,350,420,3)
--Select * From TblProduct



--Delete
--Delete From TableName Where id... (Clause �art genellikle id ye ba�l� oluyor)

--Delete From TblProduct Where ProductID=9
--Select * From TblProduct

--1.000.000 --> 1.000.001 (ID artt�r�m� son kal�nan indeksten itibaren devam eder)
--1.000.000 --> 3.sayfan�n 8.s�ras� Abdulmelik Talo
--Aktif Pasif (Silme i�lemi genellikle yap�lmaz, onun yerine status de�i�tirilir)

--Update
--Update TblName Set Column1=Value1, Column2=Value2,... Where ...

--Update TblProduct Set ProductStock=99 where ProductName='Klavye'
--Update TblProduct Set ProductStock=98 where ProductID=10
--Select * From TblProduct

--Update TblProduct Set ProductStock=ProductStock-25 where ProductID=1 or ProductID=2
--Select * From TblProduct

-- (Drop komutu tablo prosed�r fonksiyon gibi Data Definition Language dedi�imiz DDL ifadeler �zerinde silme i�lemi yapar, Delete ise veriyi siliyor)
-- (Drop komple tabloyu siliyor, Delete ise veriyi siliyor)
-- (Truncate komple b�t�n tabloyu ID yide s�f�rl�yor, verinin i�ini komple s�f�rl�yor)

--Kategorisi beyaz e�ya olan �r�nlerin i�inde sat�� fiyat� 6000 TL'nin alt�nda olan �r�nlerin stok say�s�n� %10 artt�ran sorguyu yaz�n...

--Select * From TblCategory
--Select * From TblProduct

--Update TblProduct Set ProductStock=ProductStock*110/100 Where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz E�ya') and SalePrice<6000
--Update TblProduct Set ProductStock=(ProductStock*1.1) Where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz E�ya') and SalePrice<6000
--Select * From TblProduct
--Select ProductName,ProductStock,ProductStock*1.1 From TblProduct
--Select ProductName,ProductStock,(ProductStock*110/100) From TblProduct
--Select ProductName,ProductStock,(ProductStock*110.0/100) From TblProduct
--Select ProductName,ProductStock,(ProductStock*110/100.0) From TblProduct

--Update

--Select * From TblProduct
---- 1 tane buzdolab� sat�l�nca 1 buzdolab�ndan elde edilen toplam kar
--Select ProductName, SalePrice-PurchasePrice From TblProduct Where ProductID=1
---- Elimdeki b�t�n buzdolaplar�n� satarsam ne kadar para kazan�r�m
--Select ProductName, (SalePrice-PurchasePrice)*ProductStock From TblProduct Where ProductID=1

----Select * From TblProduct
---- ma�azay� bo�alt�yoruz, elimdeki b�t�n �r�nleri satarsam benim elimde ne kal�r
---- elimdeki b�t�n �r�nleri t�ketirsem elde edece�im toplam kazan�
--Select ProductName,ProductStock,SalePrice-PurchasePrice 'Adet Ba��na Fark',ProductStock*(SalePrice-PurchasePrice) '�r�n Ba��na Toplam Fark' From TblProduct
--Select Sum(ProductStock*(SalePrice-PurchasePrice)) 'Toplam Fark' From TblProduct

---- �demem gereken tutar ne kadar
--Select ProductStock,PurchasePrice,ProductStock*PurchasePrice From TblProduct
---- al�� fiyatlar� toplam�
--Select Sum(PurchasePrice) From TblProduct
---- sat�� fiyatlar� toplam�
--Select Sum(SalePrice) From TblProduct
---- stok say�lar� eksik halde sat�� al�� fiyatlar toplam� fark�
--Select Sum(SalePrice)-Sum(PurchasePrice) 'Sat�� Al�� Fark�' From TblProduct
---- sat�� toplam� ve al�� toplam� farklar�n�n stok say�lar� toplam�yla �arp�lmas� --eksik
--Select (Sum(SalePrice)-Sum(PurchasePrice)) * Sum(ProductStock) From TblProduct --eksik
---- sat�� al�� farklar� toplam�n�n stok say�lar� toplam�yla �arp�lmas� --eksik
--Select SalePrice,PurchasePrice,SalePrice-PurchasePrice,ProductStock From TblProduct
--Select Sum(SalePrice-PurchasePrice) 'Sat�� Al�� Farklar�' From TblProduct
--Select Sum(ProductStock) 'Stok Say�lar� Toplam�' From TblProduct
--Select Sum(SalePrice-PurchasePrice)*Sum(ProductStock) From TblProduct --eksik

---- her bir �r�n�n bir tanesinden gelen sonu�
--Select SalePrice-PurchasePrice From TblProduct
---- stok adedi toplam� kadar her bir �r�nden gelen sonu�
--Select (SalePrice-PurchasePrice)*ProductStock From TblProduct
---- stok say�lar� farkl� oldu�u i�in do�ru cevap a�a��daki gibidir, t�m sonu�lar�n toplam�
--Select Sum((SalePrice-PurchasePrice)*ProductStock) From TblProduct

--Grupland�rma
--Group By

--DDL
--Create Table TblCustomer
--(
--CustomerID int identity(1,1),
--CustomerName varchar(30),
--CustomerSurname varchar(30),
--CustomerCity varchar(20),
--CustomerWork varchar(30)
--)
--Select * From TblCustomer
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Ali Kaan','Yayla','�stanbul','M�hendis')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Ufuk','D�zel','Ankara','M�hendis')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Emine','Alnar','Ankara','Doktor')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Furkan','�nce','�stanbul','Psikolog')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Erkan','G�nd�z','Bursa','��retmen')
--Select * From TblCustomer

-- Group By genellikle bir yap� i�erisinde �undan ne kadar var anlamak i�in kullan�l�r
-- �rne�in T�rkiye'de her bir �ehirde ka� ki�i ya��yor
--Select CustomerCity,Count(*) From TblCustomer --hata verir, neye g�re gruplanacak
--Select CustomerCity,Count(*) From TblCustomer Group By CustomerCity --grupland�r�lacak kriter
--Select CustomerCity,Count(*) '�al��an Say�s�' From TblCustomer Group By CustomerCity
-- default olarak birinci s�tunu a dan z ye s�ralayarak getirdi

-- order by s�ralama i�lemi ger�ekle�tiriyor
--Select CustomerCity,Count(*) '�al��an Say�s�' From TblCustomer Group By CustomerCity order by '�al��an Say�s�'
-- vermi� oldu�umuz alias takma ismi burada de�i�ken gibi kullan�ld� ve ona g�re s�raland�

-- productstock a g�re s�ralama yapmak istersek
--Select * From TblProduct order by ProductStock
--Select * From TblProduct order by ProductStock desc
--order by ascending asc (default de�erdir, a dan z ye s�ralar, k���kten b�y��e s�ralar)
--descending desc (z den a ya tersten s�ralar, en b�y�kten en k����e s�ralar)
