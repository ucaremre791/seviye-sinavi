/* =====================================================================
   AYAR DOSYASI — canlıya almadan önce doldurulacak tek dosya budur.
   Supabase panelinizde:  Project Settings → API
   ===================================================================== */
window.STQ_CONFIG = {

  /* Project URL — https://xxxxxxxx.supabase.co biçiminde.
     Supabase'in "Data API" sayfasında adresin sonunda /rest/v1/ görürsünüz;
     onu silin. (Silmeyi unutursanız da sistem kendisi düzeltir.) */
  SUPABASE_URL: "BURAYA_PROJECT_URL",

  /* anon / public key — "eyJ..." diye başlayan uzun metin.
     Bu anahtarın herkese görünmesi normaldir; veritabanı kuralları
     onunla yalnızca yeni sonuç yazılmasına izin verir, okumaya izin vermez. */
  SUPABASE_ANON_KEY: "BURAYA_ANON_KEY",

  /* Sınav sayfasının üstünde görünecek kurum adı */
  SCHOOL_NAME: "Dil Kursu",

  /* Sonuç ekranında adaya gösterilecek iletişim satırı (boş bırakılabilir) */
  CONTACT_LINE: "Sorularınız için: 0xxx xxx xx xx"
};
