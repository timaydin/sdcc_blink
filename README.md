SDCC derleyicisi kullanarak Nuvoton N76E003 için geliştirilmiş minimal test programı.

Program Linux altında test edildi. Derleyebilmek için açık kaynak SDCC nin kurulumunun yapılması ve
N76E003 BSP nin de uygun bir yere konulması, sonrasında da Makefile içerisinde ilgili referansın BSP nin
gerçek yerine göre düzenlenmesi gerekiyor. Sonrasında da sadece "make" komutu ile program derlenebilir.

Programın çıktısı olan blink.ihx dosyasının da Nuvoton ICP programlayıcısı ile MCU ya yazılması gerekiyor.
