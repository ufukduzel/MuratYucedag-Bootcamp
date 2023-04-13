--DML (Data Manipulation Language) (Veri Yapýlandýrma)
--DDL (Data Definition Language) (Veri Tanýmlama)

--DML --> Sorgu (üzerinde çalýþýr)
--DDL --> Tablo, Veri Tabaný, Prosedür, Fonk... (üzerinde çalýþýr)

--DML
--Select, Insert, Update, Delete (Crud) (Crud yapýsý -> Create,Read,Update,Delete)

--Select
--Select ColumnName1, ColumnName2 ... , ColumnNameN From TableName
-- * (All)

--Select
--Select * From TblCategory
--(Ctrl + Space tuþlarýna basýnca bütün komutlar geliyor)
--(iki tane - ilgili satýrý açýklama satýrýna dönüþtürür)

--Select CategoryName From TblCategory

--Where --> if else

--Neden tek týrnak? -->
--Varchar, nvarchar, nchar, char
--Karakter --> Char --> ' '

--Select * From TblProduct where ProductName='Ütü'
--Select * From TblProduct where ProductName='Buzdolabý'
--Select * From TblProduct where ProductName='Buzdolabi' --(Ürün yoksa boþ döner)

--Select * From TblProduct where ProductID=4
--Select * From TblProduct where ProductID='5' --(Böyle kullanýmý C# da hata verir)
--Select * From TblProduct where ProductID=5

--Select * From TblProduct where ProductName=Ütü --(Bilinmiyor syntax hatasý verir)
--Select * From TblProduct where ProductName='Ütü'
--Select * From TblProduct where ProductID=9

--Select * From TblCategory where CategoryStatus=True --(Syntax hatasý verir)
--Select * From TblCategory where CategoryStatus='True'
--Select * From TblCategory where CategoryStatus=1

--Select * From TblProduct where ProductStock=100

--Operatörler, Atama=
--Karakter Atama Operatörü ' '
--> < >= <= * - + / %

--Select * From TblProduct where ProductStock>120
--Select * From TblProduct where ProductStock!=100
--Select * From TblProduct where ProductStock<=100

--And Or
--And && (Ampersand iþareti, gemici düðümü olarak geçiyor)
--Or || (Düz çizgi)

--Select * From TblProduct where ProductStock>100 and SalePrice<6000
--Model>2015 and renk=siyah and Durumu=2.El ve Vites=Otomatik ve...
--Select * From TblProduct where ProductStock<150 and PurchasePrice>1500 and SalePrice<10000
--Select * From TblProduct where ProductStock<100 or SalePrice>5000

--Aggregate (Gruplama Kümeleme Gibi)
--Count Avg Sum - Min Max

--Count
--Select Count(*) From TblName where ...
--Select * From TblProduct
--Select Count(*) 'Toplam Ürün Sayýsý' From TblProduct
--Alias - Takma Ad - Mahlas
--Select * From TblProduct where ProductStock>100
--Select Count(*) From TblProduct where ProductStock>100
--Select * From TblProduct where ProductStock>=100
--Select Count(*) From TblProduct where ProductStock>=100

--Sum : Bir sütuna ait toplam sonuç
--Select ProductStock From TblProduct
--Select Sum(ProductStock) 'Depodaki Ürün Sayýsý' From TblProduct

--Select ProductStock From TblProduct where ProductName='Buzdolabý' or ProductName='Çamaþýr Makinesi'
--Select Sum(ProductStock) 'Depodaki Buzdolabý ve Çamaþýr Makinesi Sayýsý' From TblProduct where ProductName='Buzdolabý' and ProductName ='Çamaþýr Makinesi'
--Select Sum(ProductStock) 'Depodaki Buzdolabý ve Çamaþýr Makinesi Sayýsý' From TblProduct where ProductName='Buzdolabý' or ProductName ='Çamaþýr Makinesi'



--Use DbProduct
--Select * From TblProduct

--Avg (Ortalama)
--Select * From TblProduct
--Select Avg(ProductStock) 'Ortalama Stok Sayýsý' From TblProduct

--Kaggle (Web sitesini dersten sonra inceleyin) (Ücretsiz veri seti bulunabilir)

--Select ProductStock From TblProduct Where ProductStock >=100
--Select Avg(ProductStock) From TblProduct Where ProductStock >=100
--Select Avg(ProductStock),Count(*),Sum(ProductStock) From TblProduct Where ProductStock>=100
--Select Avg(ProductStock) 'Ortalama Stok Sayýsý',Count(*) 'Ürün Sayýsý',Sum(ProductStock) 'Ürün Toplam Stok Sayýsý' From TblProduct Where ProductStock>=100
--Select 730/6 --(Dönüþümler uygulayarak bunlarý ondalýklý formata getirebiliriz)
--Select 720/6
--Select 25*98

--Min Max
--Select ProductStock From TblProduct
--Select Min(ProductStock),Max(ProductStock) From TblProduct

-- ProductStock sayýsý en düþük ürünü bulmak isteseydik, (SubQuery alt sorgu yolu)
-- Select * From TblProduct Where ProductStock=(Select Min(ProductStock) From TblProduct) 

--Tools -> Options -> Text Editor -> All Languages -> Word Wrap (Alt satýra kaydýr)
--Edit -> Advanced -> Word Wrap (Ýkinci yolu)

--Sub Query (alt sorgu)
--sorgu1 = sorgu2 = sorgu3 = ... SorguN
--Composit Design Pattern anlatýlýrken (alt sorgular yapýsýyla iliþkili)

--SQL de sorgu ekraný açýldýktan sonra yeni bir sütun eklenirse SQL bunu göstermez

--Select * From TblProduct where ProductCategory=1
--Select * From TblProduct where ProductCategory=2
--Select * From TblProduct where ProductCategory=3
--Select * From TblProduct where ProductCategory=1
----Select * From TblProduct where ProductCategory='Beyaz Eþya'
--Select * From TblProduct where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz Eþya')

--Ürün tablosu içinde en yüksek stoða sahip ürünün adýný getiren sorgu
--Select * From TblProduct
--Select ProductName From TblProduct where ProductStock=(Select max(ProductStock) from TblProduct)

--Like (Arama iþlemi yapmayý saðlar)
--Select * From TblProduct 
--Select * From TblProduct Where ProductName like '%e%' --(Ýçinde e geçenler)
--Select * From TblProduct Where ProductName like 'a%' --(a ile baþlayanlar)
--Select * From TblProduct Where ProductName like '%i' --(i ile bitenler)
--Select * From TblProduct Where ProductName not like '%e%' --(içinde e harfi geçmeyenler)

--DML Insert
--Insert Into, Insert into, Insert intO (büyük küçük harf duyarlýlýðý yok)
--Insert into TblName (Column1,Column2...) Values (Value1,Value2...)
--insert into TblCategory (CategoryID,CategoryName,CategoryStatus) Values (6,'Kýrtasiye',1)
--Select * From TblCategory

--Delete from TblCategory where CategoryID=6
--https://stackoverflow.com/questions/36859306/the-row-values-updated-or-deleted-either-do-not-make-the-row-unique-or-they-alte

--insert into TblProduct (ProductName,ProductStock,PurchasePrice,SalePrice,ProductCategory) Values ('Kettle',120,350,420,3)
--Select * From TblProduct



--Delete
--Delete From TableName Where id... (Clause þart genellikle id ye baðlý oluyor)

--Delete From TblProduct Where ProductID=9
--Select * From TblProduct

--1.000.000 --> 1.000.001 (ID arttýrýmý son kalýnan indeksten itibaren devam eder)
--1.000.000 --> 3.sayfanýn 8.sýrasý Abdulmelik Talo
--Aktif Pasif (Silme iþlemi genellikle yapýlmaz, onun yerine status deðiþtirilir)

--Update
--Update TblName Set Column1=Value1, Column2=Value2,... Where ...

--Update TblProduct Set ProductStock=99 where ProductName='Klavye'
--Update TblProduct Set ProductStock=98 where ProductID=10
--Select * From TblProduct

--Update TblProduct Set ProductStock=ProductStock-25 where ProductID=1 or ProductID=2
--Select * From TblProduct

-- (Drop komutu tablo prosedür fonksiyon gibi Data Definition Language dediðimiz DDL ifadeler üzerinde silme iþlemi yapar, Delete ise veriyi siliyor)
-- (Drop komple tabloyu siliyor, Delete ise veriyi siliyor)
-- (Truncate komple bütün tabloyu ID yide sýfýrlýyor, verinin içini komple sýfýrlýyor)

--Kategorisi beyaz eþya olan ürünlerin içinde satýþ fiyatý 6000 TL'nin altýnda olan ürünlerin stok sayýsýný %10 arttýran sorguyu yazýn...

--Select * From TblCategory
--Select * From TblProduct

--Update TblProduct Set ProductStock=ProductStock*110/100 Where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz Eþya') and SalePrice<6000
--Update TblProduct Set ProductStock=(ProductStock*1.1) Where ProductCategory=(Select CategoryID From TblCategory where CategoryName='Beyaz Eþya') and SalePrice<6000
--Select * From TblProduct
--Select ProductName,ProductStock,ProductStock*1.1 From TblProduct
--Select ProductName,ProductStock,(ProductStock*110/100) From TblProduct
--Select ProductName,ProductStock,(ProductStock*110.0/100) From TblProduct
--Select ProductName,ProductStock,(ProductStock*110/100.0) From TblProduct

--Update

--Select * From TblProduct
---- 1 tane buzdolabý satýlýnca 1 buzdolabýndan elde edilen toplam kar
--Select ProductName, SalePrice-PurchasePrice From TblProduct Where ProductID=1
---- Elimdeki bütün buzdolaplarýný satarsam ne kadar para kazanýrým
--Select ProductName, (SalePrice-PurchasePrice)*ProductStock From TblProduct Where ProductID=1

----Select * From TblProduct
---- maðazayý boþaltýyoruz, elimdeki bütün ürünleri satarsam benim elimde ne kalýr
---- elimdeki bütün ürünleri tüketirsem elde edeceðim toplam kazanç
--Select ProductName,ProductStock,SalePrice-PurchasePrice 'Adet Baþýna Fark',ProductStock*(SalePrice-PurchasePrice) 'Ürün Baþýna Toplam Fark' From TblProduct
--Select Sum(ProductStock*(SalePrice-PurchasePrice)) 'Toplam Fark' From TblProduct

---- Ödemem gereken tutar ne kadar
--Select ProductStock,PurchasePrice,ProductStock*PurchasePrice From TblProduct
---- alýþ fiyatlarý toplamý
--Select Sum(PurchasePrice) From TblProduct
---- satýþ fiyatlarý toplamý
--Select Sum(SalePrice) From TblProduct
---- stok sayýlarý eksik halde satýþ alýþ fiyatlar toplamý farký
--Select Sum(SalePrice)-Sum(PurchasePrice) 'Satýþ Alýþ Farký' From TblProduct
---- satýþ toplamý ve alýþ toplamý farklarýnýn stok sayýlarý toplamýyla çarpýlmasý --eksik
--Select (Sum(SalePrice)-Sum(PurchasePrice)) * Sum(ProductStock) From TblProduct --eksik
---- satýþ alýþ farklarý toplamýnýn stok sayýlarý toplamýyla çarpýlmasý --eksik
--Select SalePrice,PurchasePrice,SalePrice-PurchasePrice,ProductStock From TblProduct
--Select Sum(SalePrice-PurchasePrice) 'Satýþ Alýþ Farklarý' From TblProduct
--Select Sum(ProductStock) 'Stok Sayýlarý Toplamý' From TblProduct
--Select Sum(SalePrice-PurchasePrice)*Sum(ProductStock) From TblProduct --eksik

---- her bir ürünün bir tanesinden gelen sonuç
--Select SalePrice-PurchasePrice From TblProduct
---- stok adedi toplamý kadar her bir üründen gelen sonuç
--Select (SalePrice-PurchasePrice)*ProductStock From TblProduct
---- stok sayýlarý farklý olduðu için doðru cevap aþaðýdaki gibidir, tüm sonuçlarýn toplamý
--Select Sum((SalePrice-PurchasePrice)*ProductStock) From TblProduct

--Gruplandýrma
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
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Ali Kaan','Yayla','Ýstanbul','Mühendis')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Ufuk','Düzel','Ankara','Mühendis')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Emine','Alnar','Ankara','Doktor')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Furkan','Ýnce','Ýstanbul','Psikolog')
--insert into TblCustomer (CustomerName,CustomerSurname,CustomerCity,CustomerWork) Values ('Erkan','Gündüz','Bursa','Öðretmen')
--Select * From TblCustomer

-- Group By genellikle bir yapý içerisinde þundan ne kadar var anlamak için kullanýlýr
-- Örneðin Türkiye'de her bir þehirde kaç kiþi yaþýyor
--Select CustomerCity,Count(*) From TblCustomer --hata verir, neye göre gruplanacak
--Select CustomerCity,Count(*) From TblCustomer Group By CustomerCity --gruplandýrýlacak kriter
--Select CustomerCity,Count(*) 'Çalýþan Sayýsý' From TblCustomer Group By CustomerCity
-- default olarak birinci sütunu a dan z ye sýralayarak getirdi

-- order by sýralama iþlemi gerçekleþtiriyor
--Select CustomerCity,Count(*) 'Çalýþan Sayýsý' From TblCustomer Group By CustomerCity order by 'Çalýþan Sayýsý'
-- vermiþ olduðumuz alias takma ismi burada deðiþken gibi kullanýldý ve ona göre sýralandý

-- productstock a göre sýralama yapmak istersek
--Select * From TblProduct order by ProductStock
--Select * From TblProduct order by ProductStock desc
--order by ascending asc (default deðerdir, a dan z ye sýralar, küçükten büyüðe sýralar)
--descending desc (z den a ya tersten sýralar, en büyükten en küçüðe sýralar)
