-- ============================== DELETE ===================================  
    -- DELETE FROM tablo_adı;  Tablonun tüm içerğini siler.
    -- Bu komut bir DML komutudur. Dolayısıyla devamında WHERE gibi cümlecikler
    -- kullanılabilir.
    
    
    -- DELETE FROM tablo_adı
    -- WHERE sutun_adi = veri;
    
     drop table ogrenciler;
    CREATE TABLE ogrenciler
    (
        id CHAR(3),
        isim VARCHAR(50),
        veli_isim VARCHAR(50),
        yazili_notu int       
    );
  
    INSERT INTO ogrenciler VALUES(123, 'Ali Can', 'Hasan',75);
    INSERT INTO ogrenciler VALUES(124, 'Merve Gul', 'Ayse',85);
    INSERT INTO ogrenciler VALUES(125, 'Kemal Yasa', 'Hasan',85);
    INSERT INTO ogrenciler VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
    INSERT INTO ogrenciler VALUES(127, 'Mustafa Bak', 'Can',99);
     savepoint abc;
     
      -- savepoint sikintisi varsa -> SET autocommit=0; 
    -- ayarlar sql execution auto commit tiki kaldr
--    DELETE FROM ogrenciler;     -- Tüm verileri sil.
--    ROLLBACK TO  ABC;  -- Silinen Verileri geri getir.
--    SELECT * FROM ogrenciler;
    
/* =============================================================================
         Seçerek silmek için WHERE Anahtar kelimesi kullanılabilir. 
===============================================================================*/     
/* -----------------------------------------------------------------------------
  ORNEK1: id'si 124 olan ogrenciyi siliniz.
 -----------------------------------------------------------------------------*/ 
 
 
 delete from ogrenciler where id='124';
 
 select * from ogrenciler;
 
 /* -----------------------------------------------------------------------------
  ORNEK2: ismi Kemal Yasa olan satırını siliniz.
 -----------------------------------------------------------------------------*/   
 
 delete from ogrenciler where isim='Kemal Yasa';
 
 /* -----------------------------------------------------------------------------
  ORNEK3: ismi Nesibe Yilmaz veya Mustafa Bak olan kayıtları silelim.
 -----------------------------------------------------------------------------*/
 
 
 delete from ogrenciler  where isim='nesibe yilmaz' or isim='mustafa bak'; 
  delete from ogrenciler  where isim in('nesibe yilmaz','mustafa bak');
  
  
  
  