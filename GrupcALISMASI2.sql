
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
    savepoint abc; -- silinen verilerimizi geri kurtarabiliyoruz ama sadece DML lerde yani delete islemlerinde
  -- ROLLBACK TO abc yazinca geri gelir
    
    select * from ogrenciler;
    
    
    delete from ogrenciler 
    where id=123;
	savepoint abc; -- silinen verileri en son nerede savepoint yaptiysak rollback ile o konuma getirir
    
    delete from ogrenciler
    where isim="ali can";
    

	rollback to abc;
    
	delete from ogrenciler
    where id in(126,127);



	truncate table ogrenciler; 	-- Tammamen tablonun icini siler ama bos table semasi kalir
								-- buda DDL dir silinen ler geri getirilemez
                                
                                
    
 



























