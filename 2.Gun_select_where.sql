-- ======== SELECT - WHERE ==========

 create table ogrenciler(
 id int,
 isim varchar(50),
 adres varchar(150),
 sinav_notu int);
 
  INSERT INTO ogrenciler VALUES(123, 'Ali Can', 'Ankara',75);
 INSERT INTO ogrenciler VALUES(124, 'Merve Gul', 'Ankara',85);
 INSERT INTO ogrenciler VALUES(125, 'Kemal Yasa', 'Istanbul',85);
     
 select * from ogrenciler;
 
  /* -----------------------------------------------------------------------------
  ORNEK1: Sınav notu 80'den büyük olan öğrencilerin tüm bilgilerini listele
 -----------------------------------------------------------------------------*/
 
 select * from ogrenciler
 where sinav_notu>80;
 
 -- ORNEK2: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
 
 select * from ogrenciler
 where adres='Ankara';
 
 -- ORNEK3: id’si 124 olan öğrencilerin tüm bilgilerini listele
 
 select * from ogrenciler
 
 
 where id>124;
 
 
 
 /* ======================= SELECT - BETWEEN ==================================*/ 
   
   CREATE TABLE personel
    (   
        id CHAR(5),
        isim VARCHAR(50),
        maas int
    );
    
    INSERT INTO personel VALUES('10001', 'Ahmet Aslan', 7000);
    INSERT INTO personel VALUES( '10002', 'Mehmet Yılmaz' ,12000);
    INSERT INTO personel VALUES('10003', 'Meryem ', 7215);
    INSERT INTO personel VALUES('10004', 'Veli Han', 5000);
    INSERT INTO personel VALUES('10005', 'Mustafa Ali', 5500);
    INSERT INTO personel VALUES('10005', 'Ayşe Can', 4000);
    -- not: Between iki mantıksal ifade ile tanımlayabilecegimiz durumları tek komutla
    -- yazabilme imkanı verir. Yazdıgımız 2 sınır da aralıga dahildir.
    
    
 /* -----------------------------------------------------------------------------
  ORNEK4: id'si 10002 ile 10005 arasında olan personelin bilgilerini listele
 -----------------------------------------------------------------------------*/
 
 select * from personel
 where id between '10002' and '10005';
 
 -- yada 
 
 select * from personel
 where id >= '10002' and id <= '10005';
 
 /* -----------------------------------------------------------------------------
  ORNEK5: ismi Mehmet Yılmaz ile Veli Han arasındaki olan personel bilgilerini 
  listeleyiniz. personelin bilgilerini listele
 -----------------------------------------------------------------------------*/  
 
 
 select * from personel
 where isim between "mehmet yılmaz" and "veli han";
 
 
 /* -----------------------------------------------------------------------------
  ORNEK7: id’si 10001,10002 ve 10004 olan personelin bilgilerini listele
 -----------------------------------------------------------------------------*/   
 
 select * from personel
 where id in(10001,10002,10004);
 
 /* -----------------------------------------------------------------------------
  ORNEK8: Maaşı sadece 7000  veya 12000 olan personelin bilgilerini listele
-----------------------------------------------------------------------------*/   

select * from personel
where maas in(7000,12000);

-- yada

select * from  personel
where maas=7000 or maas=12000;

 
 /* ======================= SELECT - LIKE ======================================
    NOT:LIKE anahtar kelimesi, sorgulama yaparken belirli patternleri 
    kullanabilmemize olanak sağlar.
    SYNTAX:
    -------
    SELECT sutün1, sutün2,…
    FROM  tablo_adı WHERE sütunN LIKE pattern
    
    PATTERN İÇİN
    -------------
    %    ---> 0 veya daha fazla karakteri belirtir. 
    _    ---> Tek bir karakteri temsil eder.
        
/* ========================================================================== */
 
 /* -----------------------------------------------------------------------------
  ORNEK9:  ismi A harfi ile başlayanları listeleyiniz
 -----------------------------------------------------------------------------*/   
 
 select * from personel
 where isim like 'A%'; -- a ile baslar gerisi onemli degil
 
 /* -----------------------------------------------------------------------------
  ORNEK10:  ismi n harfi ile bitenleri listeleyiniz
 -----------------------------------------------------------------------------*/  
 
 select * from personel
 where isim like '%n'; -- n ile biter oncesi onemli degil
 
 
    /* -----------------------------------------------------------------------------
  ORNEK11:  isminin 2. harfi e olanları listeleyiniz
 -----------------------------------------------------------------------------*/  
 
 select * from personel
 where isim like '_e%'; -- ikinci harfi e olup serisi oneli degil

  /* -----------------------------------------------------------------------------
  ORNEK12:  isminin 2. harfi e olup diğer harflerinde y olanları listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel
 where isim like '_e%y%'; -- yuzde icinde  harf herhangi bir yernde harf demek ama e den sonra
 
 -- '__h%a&' 3. harfi h gerisinin herhangi bir yerinde a olan
 
 /* -----------------------------------------------------------------------------
  ORNEK15:  isminde a harfi olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/
 
 select * from personel
 where isim not like '%a%'; -- not like olmayan demek icinde a olmayanlari getir
 
 
 /* -----------------------------------------------------------------------------
  ORNEK18: maaşı 5 haneli olanları listeleyiniz
 -----------------------------------------------------------------------------*/     
 
 select * from personel 
 where maas like '_____';  --  _ alt tire kac haneli olacagini soyler
  
 
/* -----------------------------------------------------------------------------
  ORNEK20: 1. harfi A ve 7.harfi A olan perspneli listeleyiniz.
 -----------------------------------------------------------------------------*/  
 
 select * from personel
 where isim like 'a_____a%';
 
 /* -----------------------------------------------------------------------------
  ORNEK16:  maaşının son 2 hanesi 00 olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/  

select * from personel
where maas like '%00';

/* -----------------------------------------------------------------------------
  ORNEK17:  maaşı 4000 olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/ 
 
 