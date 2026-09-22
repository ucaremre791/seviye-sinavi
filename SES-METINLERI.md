# Dinleme kayıtları — üretim talimatı

Toplam 8 kısa ses dosyası, yaklaşık 3 dakikalık kayıt. Hepsini bir kez
üretip `audio/` klasörüne koyarsınız; bir daha dokunmanız gerekmez.

> **Neden MP3?** Tarayıcının kendi sesi her cihazda farklıdır; bazı
> telefonlarda hiç İngilizce ses yüklü değildir. MP3 ile bütün adaylar
> aynı kaydı, aynı hızda dinler — sonuçlar karşılaştırılabilir olur.
> Dosyalar eksikse sınav yine çalışır ama tarayıcı sesine düşer.

---

## Nasıl üretilir (ElevenLabs, ücretsiz)

1. [elevenlabs.io](https://elevenlabs.io) → ücretsiz hesap açın. Aylık ücretsiz
   kota bu iş için fazlasıyla yeter (toplam ~1.200 karakter).
2. **Text to Speech** ekranını açın.
3. Ses seçimi — **İngiliz aksanı** kullanın, metinler İngiliz İngilizcesi
   (*rubbish, flat, lift, timetable*). Önerilenler: **Alice**, **Charlotte**
   (kadın), **George**, **Daniel** (erkek).
4. Aşağıdaki metinleri tek tek yapıştırıp **Download**'a basın.
5. İnen dosyayı tabloda yazan adla yeniden adlandırıp `audio/` klasörüne koyun.

**Hız ayarı:** ElevenLabs'te *Speed* varsa aşağıdaki değerleri kullanın.
Yoksa varsayılan bırakın — metinler zaten seviyeye göre yazıldı.

**Alternatifler:** ttsmaker.com (kayıt gerekmez), Google Cloud TTS
(Neural2-B / Neural2-F), ya da bir öğretmeninizin telefonla kaydı.
Öğretmen kaydı en doğalıdır; sessiz bir odada, telefonu 20 cm uzakta tutup
okutmanız yeterli.

---

## Dosyalar

| Dosya adı | Ses | Hız | Seviye |
|---|---|---|---|
| `ses-testi.mp3` | Kadın A | normal | — |
| `dinleme-1.mp3` | Kadın A | **yavaş** (0.85×) | A1 |
| `dinleme-2.mp3` | Erkek | normal (0.95×) | A2 |
| `dinleme-3.mp3` | Kadın B | normal (1.0×) | B1 |
| `dikte-1.mp3` | Kadın A | **yavaş** (0.85×) | A1 |
| `dikte-2.mp3` | Kadın A | **yavaş** (0.85×) | A2 |
| `dikte-3.mp3` | Kadın A | **yavaş** (0.85×) | B1 |
| `dikte-4.mp3` | Kadın A | **yavaş** (0.85×) | B1 |

Dikte dosyalarının hepsi **aynı sesle** olmalı. Her dosyada cümle
**bir kez** okunur — aday zaten iki kez çalabiliyor.

---

## Metinler

### ses-testi.mp3
```
This is a sound check. If you can hear this sentence clearly, you are ready to begin.
```

### dinleme-1.mp3 — müze anonsu (A1)
```
Good morning, and welcome to the city museum. The museum is open from ten o'clock in the morning until five o'clock in the afternoon. A ticket costs twenty lira. The cafe is on the first floor. Thank you.
```

### dinleme-2.mp3 — telefon mesajı (A2)
```
Hi Emma, it's Tom. I'm calling about Saturday. I know we said we'd meet at the cinema at six, but the film actually starts at half past five, not six. So can we meet at quarter past five instead, outside the main entrance? And don't worry about the tickets, I bought them online this morning. Call me back if there's a problem. Bye!
```

### dinleme-3.mp3 — şehir değiştirme (B1)
```
So I moved to Eskisehir about two years ago. I'd been offered a job there, and honestly I nearly said no. I didn't know anyone in the city, and my family are all in Antalya. What changed my mind was the rent. In Antalya I was paying more than half my salary for a small flat. In Eskisehir I found somewhere twice the size for a third of the price. The first winter was hard, much colder than I expected, and I did feel lonely at the beginning. But there are a lot of students here, so there's always something happening, and I've made more friends in two years than I did in ten years at home. Would I go back? Probably not.
```

### dikte-1.mp3
```
My brother works in a small office near the station.
```

### dikte-2.mp3
```
We usually have breakfast at half past seven on weekdays.
```

### dikte-3.mp3
```
Although it was raining heavily, the match was not cancelled.
```

### dikte-4.mp3
```
If I had more time, I would learn another language.
```

---

## Kontrol

Dosyaları koyduktan sonra sınavı açıp:

- Giriş ekranındaki **Ses testi** → "Ses çalışıyor" yazmalı
- 4. bölümde üç kaydı da çalın
- 5. bölümde dört cümleyi de çalın

Bir dosya eksikse o kayıt sessizce tarayıcı sesine düşer — yani sınav
durmaz ama o adayın duyduğu ses farklı olur. Sekiz dosyanın hepsini
koyduğunuzdan emin olun.
