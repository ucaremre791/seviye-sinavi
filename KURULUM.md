# Kurulum — sıfırdan canlıya

Toplam süre yaklaşık **1 saat**. Kod yazmanız gerekmiyor; tek düzenleyeceğiniz
dosya `config.js`.

Sistem üç parçadan oluşuyor:

| Parça | Ne işe yarar | Ücret |
|---|---|---|
| **GitHub Pages** | `index.html` ve `panel.html` dosyalarını internette yayınlar | ücretsiz |
| **Supabase** | Sonuçları saklar, yönetici girişini yönetir | ücretsiz |
| **MP3 dosyaları** | Dinleme ve dikte kayıtları | ücretsiz |

---

## 1 · Supabase (20 dakika)

**1.1** [supabase.com](https://supabase.com) → **Start your project** → GitHub veya
e-posta ile kaydolun.

**1.2** **New project**. Bölge olarak **Central EU (Frankfurt)** seçin —
Türkiye'ye en yakın olanı. Veritabanı şifresini bir yere kaydedin
(bu şifreyi sonra kullanmayacaksınız ama kaybetmeyin).

Aynı formdaki **Security** bölümünde:

| Ayar | Olması gereken |
|---|---|
| Enable Data API | **açık** — sayfalar veritabanına bununla bağlanır |
| Automatically expose new tables | **kapalı** — izinleri `supabase.sql` tek tek verir |
| Enable automatic RLS | **açık** — ek güvenlik ağı |

**1.3** Proje açıldıktan sonra sol menüden **SQL Editor** → **New query**.
Bu depodaki `supabase.sql` dosyasının **tamamını** yapıştırıp **Run**'a basın.
"Success. No rows returned" yazmalı. Bu, sonuç tablosunu ve güvenlik
kurallarını kurar.

**1.4** Sol menüden **Authentication** → **Users** → **Add user** →
**Create new user**. Kendinize bir e-posta ve şifre belirleyin — panele bu
bilgilerle gireceksiniz. *Auto Confirm User* seçeneğini işaretleyin.
Panele girecek her öğretmen için ayrı kullanıcı açabilirsiniz.

**1.5** Sol menüden **Project Settings** → **API**. İki değeri kopyalayın:
- **Project URL** → `https://xxxxxxxx.supabase.co`
- **Project API keys → anon / public** → `eyJ...` diye başlayan uzun metin

> **Güvenlik:** `anon` anahtarının herkese görünmesi normaldir; 1.3'te
> kurduğunuz kurallar onunla yalnızca *yeni sonuç yazılmasına* izin verir,
> okumaya izin vermez. **`service_role` anahtarını hiçbir yere koymayın.**

---

## 2 · Ses dosyaları (20 dakika)

`SES-METINLERI.md` dosyasındaki talimatı izleyip 8 MP3 üretin ve `audio/`
klasörüne koyun. Bu adımı atlarsanız sınav yine çalışır ama her aday
kendi cihazının sesini duyar — ölçüm karşılaştırılabilirliği zayıflar.

---

## 3 · config.js (2 dakika)

`config.js` dosyasını açıp dört alanı doldurun:

```js
window.STQ_CONFIG = {
  SUPABASE_URL:      "https://xxxxxxxx.supabase.co",   // 1.5'ten
  SUPABASE_ANON_KEY: "eyJhbGciOi...",                  // 1.5'ten
  SCHOOL_NAME:       "Kurs Adınız",
  CONTACT_LINE:      "Sorularınız için: 0xxx xxx xx xx"
};
```

---

## 4 · GitHub Pages (15 dakika)

**4.1** GitHub'da yeni bir depo açın, örneğin `seviye-sinavi`. **Public** olmalı
(ücretsiz Pages için gerekli).

**4.2** Bu klasördeki dosyaların **tamamını** depoya yükleyin — `audio/`
klasörü dahil. Web arayüzünden: **Add file → Upload files** → hepsini
sürükleyin → **Commit changes**.

**4.3** Depoda **Settings** → sol menüden **Pages** →
**Source: Deploy from a branch** → **Branch: main**, klasör **/ (root)** →
**Save**.

**4.4** Bir iki dakika sonra sayfanın üstünde adresiniz görünür:

- Sınav: `https://kullaniciadi.github.io/seviye-sinavi/`
- Panel: `https://kullaniciadi.github.io/seviye-sinavi/panel.html`

**4.5 (isteğe bağlı) Kendi alan adınız.** Pages ekranında **Custom domain**
kutusuna `seviye.kursadi.com` yazın, sonra alan adı sağlayıcınızın DNS
panelinde bir **CNAME** kaydı ekleyin: ad `seviye`, hedef
`kullaniciadi.github.io`. Yayılması birkaç saat sürebilir.

---

## 5 · Test (10 dakika)

1. **Sınav adresini telefondan açın.** Kırmızı "Kurulum tamamlanmadı"
   uyarısı görünmemeli.
2. Giriş ekranında **Ses testi** → "Ses çalışıyor" yazmalı.
3. Baştan sona bir sınav çözün. Son ekranda **"Sonucunuz kaydedildi"**
   yazmalı — bu, Supabase bağlantısının çalıştığı anlamına gelir.
4. **Panel adresini** açıp 1.4'teki e-posta ve şifreyle girin. Az önceki
   sınav listede görünmeli.
5. **Detay** → yazma metnini okuyup 0–20 arası puan girin. Toplam ve
   seviye anında güncellenmeli.

---

## 6 · Günlük kullanım

- **Sınav linkini** WhatsApp, e-posta, Instagram bio — istediğiniz yerde
  paylaşın. Aday hesap açmadan, telefondan veya bilgisayardan girer.
- **Panelden** gelen sonuçları görür, yazma puanlarını girersiniz.
  Birden fazla öğretmen aynı anda kullanabilir.
- **CSV kopyala** ile tüm veriyi Excel'e aktarabilirsiniz.

### Bilmeniz gerekenler

- **Aday "B1", panel "B1+" gösterebilir.** Adaya kurs programınızın en üst
  seviyesi söylenir; panelde ise B1'i aştığı bilgisini görürsünüz.
- **Süre 38 dakika.** Her bölümün kendi sayacı var, süre dolunca otomatik
  geçer. Aday sayfayı kapatırsa aynı linkten kaldığı yerden devam eder.
- **Boş bırakmak serbest.** Öğrenciye "emin değilsen boş bırak" deniyor;
  bu, seviyenin daha doğru çıkmasını sağlıyor. Panel boş sayısını gösterir.
- **Gözetimsiz sınav.** Bu bir *yerleştirme* sınavıdır, sertifika değil.
  Panel şüpheli durumları işaretler (çok hızlı bitirme, ham cevaplarla
  puanın uyuşmaması). Sınır vakalarda 3 dakikalık sözlü teyit yapın.
- **Yedek.** Supabase'de **Table Editor → results** üzerinden veriyi her
  zaman görebilir, dışa aktarabilirsiniz.

---

## Sorun giderme

| Belirti | Sebep | Çözüm |
|---|---|---|
| Kırmızı "Kurulum tamamlanmadı" uyarısı | `config.js` boş | 3. adımı yapın |
| "Bağlantı kurulamadı" mesajı | URL/anahtar yanlış, ya da SQL çalıştırılmadı | 1.3 ve 1.5'i kontrol edin |
| Panelde "Invalid login credentials" | Kullanıcı yok veya şifre yanlış | 1.4'ü tekrarlayın |
| Panelde satır yok ama sınav "kaydedildi" dedi | SQL'deki okuma kuralı eksik | `supabase.sql`'i tekrar çalıştırın |
| Ses gelmiyor | MP3'ler yüklenmemiş veya adları yanlış | `SES-METINLERI.md`'deki dosya adlarını birebir kullanın |
| Sayfa güncellenmiyor | Tarayıcı önbelleği | Ctrl+F5 / telefonda sekmeyi kapatıp açın |
