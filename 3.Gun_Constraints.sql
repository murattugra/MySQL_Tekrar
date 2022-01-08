/*======================= CONSTRAINTS - KISITLAMALAR ======================================
           
    NOT NULL -    Bir Sütunun  NULL içermemesini garanti eder. 
    UNIQUE -      Bir sütundaki tüm değerlerin BENZERSİZ olmasını garanti eder.  
    PRIMARY KEY - Bir sütünün NULL içermemesini ve sütundaki verilerin 
                  BENZERSİZ olmasını garanti eder.(NOT NULL ve UNIQUE birleşimi gibi)
    FOREIGN KEY - Başka bir tablodaki Primary Key’i referans göstermek için kullanılır. 
                  Böylelikle, tablolar arasında ilişki kurulmuş olur. 
                  foreign ve primary ile tablolar birbirine bağlamadan da, id leri ayni olan satirlarda işlem yap diyebiliriz, böylelikle
                  ayni field verilebilir, parent child ilişkisi olmamiş olur
    CHECK -       Bir sutundaki tüm verilerin belirlenen özel bir şartı sağlamasını garanti eder. 
    DEFAULT -     Herhangi bir değer atanamadığında, Başlangıç değerinin atanmasını sağlar.
 ========================================================================================*/
 
 create table calisanlar
 (
 id char(5) primary key,
 isim varchar(50) unique,
 maas int not null,
 ise_baslama date 
);

INSERT INTO calisanlar VALUES( '10002', 'Mehmet Yılmaz' ,12000, '2018-04-14'); 
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10010', null, 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14'); 
INSERT INTO calisanlar VALUES('10006', 'Canan Yaş', NULL, '2019-04-12'); 
INSERT INTO calisanlar VALUES('10003', 'CAN', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10007', 'CAN', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10009', 'cem', '', '2018-04-14');
INSERT INTO calisanlar VALUES('', 'osman', 2000, '2018-04-14');
INSERT INTO calisanlar VALUES( '10002', 'ayse Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES( null, 'filiz ' ,12000, '2018-04-14');

/*----------------------------------------------------------------
---------------- KISITLAMALAR ( FOREIGN KEY ) --------------------
------------------------------------------------------------------*/
create table adresler
(
adres_id char(10),
sokak varchar(50),
cadde varchar(30),
sehir varchar(20),
constraint id_fk foreign key (adres_id) references calisanlar(id)
);

    INSERT INTO adresler VALUES('10003','Mutlu Sok', '40.Cad.','IST');
    INSERT INTO adresler VALUES('10003','Can Sok', '50.Cad.','Ankara');
    INSERT INTO adresler VALUES('10002','Ağa Sok', '30.Cad.','Antep');
    INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');
  

CREATE TABLE talebeler
    (
        id CHAR(3) primary key,  
        isim VARCHAR(50),
        veli_isim VARCHAR(50),
        yazili_notu int
    );
    
    INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75);
    INSERT INTO talebeler VALUES(124, 'Merve Gul', 'Ayse',85);
    INSERT INTO talebeler VALUES(125, 'Kemal Yasa', 'Hasan',85);
    INSERT INTO talebeler VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
    INSERT INTO talebeler VALUES(127, 'Mustafa Bak', 'Can',99);
    
    
create table notlar
(
not_id char(8),
ders_adi varchar(40),
yazili_not int,
constraint notlar foreign key (not_id)
references talebeler(id) on delete cascade);-- on delete cascade parent silinince chldekilerde silinir bagliyouz

INSERT INTO notlar VALUES ('123','kimya',75);
    INSERT INTO notlar VALUES ('124', 'fizik',65);
    INSERT INTO notlar VALUES ('125', 'tarih',90);
    INSERT INTO notlar VALUES ('126', 'Matematik',90);
    
    
    
    select * from talebeler;
    
    select * from notlar;
    
    select * from talebeler,notlar where talebeler.id = notlar.not_id;