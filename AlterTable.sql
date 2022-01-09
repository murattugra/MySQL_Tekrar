

/*=============================== ALTER TABLE ==================================
    
    ALTER TABLE  tabloda ADD, MODIFY, veya DROP/DELETE COLUMNS islemleri icin 
    kullanilir.
    
    ALTER TABLE ifadesi tablolari yeniden isimlendirmek (RENAME) icin de
    kullanilir.
   
     uptade ==>   dml
     alter  ==>   uptade nin ddl versiyonu
==============================================================================*/


create table personel
(
id int primary key,
isim varchar(50),
sehir varchar(60),
maas int,
sirket varchar(30)
);


insert into personel values (101,'Murat Arslan','Istanbul',5000,'Mercedes');
insert into personel values (102,'Mehmet Hakki','Ankra',4500,'Ford');
insert into personel values (103,'Ali Can','Eskisehir',6000,'Honda');
insert into personel values (104,'Veysel Bulut','Duzce',3500,'Toyota');
insert into personel values (105,'Kiraz Elma','Cankkale',2500,'Fiat');

select * from personel;

/* -----------------------------------------------------------------------------
  ORNEK1: personel tablosuna ulke_isim adinda ve default degeri 'Turkiye' olan 
  yeni bir sutun ekleyiniz.
------------------------------------------------------------------------------*/ 

alter table personel
add ulke_isim varchar(40) default 'Turkiye';

select * from personel;

/* -----------------------------------------------------------------------------
  ORNEK2: personel tablosuna cinsiyet Varchar(20) ve yas Number(3) seklinde 
  yeni sutunlar ekleyiniz.
------------------------------------------------------------------------------*/  
alter table personel
add (cinsiyet varchar(20) , yas int);

/* -----------------------------------------------------------------------------
  ORNEK3: personel tablosundan sirket sutununu siliniz. 
------------------------------------------------------------------------------*/ 

alter table personel
drop column sirket;

/* -----------------------------------------------------------------------------
  ORNEK4: personel tablosundaki ulke_isim sutununun adini ulke_adi olarak 
  degistiriniz. 
------------------------------------------------------------------------------*/  

alter table personel
rename column ulke_isim to ulke_adi;

/* -----------------------------------------------------------------------------
  ORNEK5: personel tablosunun adini isciler olarak degistiriniz. 
------------------------------------------------------------------------------*/  

alter table personel
rename to isciler;

select * from isciler;

/* -----------------------------------------------------------------------------
  ORNEK6: isciler tablosundaki ulke_adi sutununa NOT NULL kisitlamasi ekleyiniz
  ve veri tipini VARCHAR(30) olarak değiştiriniz. 
------------------------------------------------------------------------------*/ 
    alter table isciler
    modify ulke_adi varchar(30) not null;
    
-- maas kısıtlaması ekle

alter table isciler
add constraint check (maas>=3500);
 -- Maas alt limit kisitlamasi atadik.
    -- kisitlama atadiktan sonra maasin 3500 altinda olmasi sebebiyle
    -- alttaki veriyi giremeyiz 
    INSERT INTO isciler VALUES(123452310, 'Hatice Sahin', 'Bursa', 3000, null);