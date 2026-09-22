# İngilizce Seviye Tespit Sınavı — A1 / A2 / B1

Öğrenci adayları için 38 dakikalık, telefondan da çözülebilen çevrimiçi
seviye tespit sınavı. Sonuçlar merkezî bir panelde toplanır.

| Dosya | Ne işe yarar |
|---|---|
| `index.html` | Adayın çözdüğü sınav — bu linki paylaşırsınız |
| `panel.html` | Öğretmen paneli, e-posta + şifreyle girilir |
| `config.js` | **Doldurmanız gereken tek dosya** |
| `supabase.sql` | Veritabanı kurulumu, bir kez çalıştırılır |
| `audio/` | Dinleme ve dikte kayıtları |
| `KURULUM.md` | Sıfırdan canlıya adım adım |
| `SES-METINLERI.md` | Kayıt metinleri ve üretim talimatı |

**Başlarken:** `KURULUM.md` dosyasını açın.

## Sınavın yapısı

| Bölüm | Biçim | Soru | Puan | Süre |
|---|---|---|---|---|
| 1 · Use of English | Kısa diyalogda form + konuşmacının kastı | 20 | 20 | 8 dk |
| 2 · Reading | Tabela, mesaj, A2 e-posta, B1 metin | 12 | 20 | 8 dk |
| 3 · Cloze | İki metinde çoktan seçmeli boşluk | 10 | 10 | 5 dk |
| 4 · Listening | Üç kayıt | 8 | 16 | 7 dk |
| 5 · Dictation | Kısmi dikte, 4 cümle | 14 | 14 | 4 dk |
| 6 · Writing | Kısa metin, öğretmen puanlar | 1 | 20 | 6 dk |

Madde tipleri Oxford Placement Test, Cambridge Linguaskill ve Pearson
Versant biçimlerinden esinlenerek özgün yazılmıştır.

## Seviye bandları

Otomatik puan 80 üzerinden; yazma eklenince toplam 100.

| Seviye | Otomatik | Yazma dahil |
|---|---|---|
| A1 | 0 – 45 | 0 – 54 |
| A2 | 46 – 62 | 55 – 71 |
| B1 | 63 – 73 | 72 – 86 |
| B1+ | 74 – 80 | 87 – 100 |

Kesme puanları, her CEFR seviyesinden binlerce aday simüle edilerek
komşu dağılımların kesiştiği noktaya yerleştirildi; simülasyonda
sınıflama doğruluğu %97. Ayrıca bir **hakimiyet kuralı** var: bir aday
bir seviyenin ve altındaki tüm seviyelerin %70'ini geçtiyse, ham puanı
ne olursa olsun o kurun altına yerleştirilmez.
