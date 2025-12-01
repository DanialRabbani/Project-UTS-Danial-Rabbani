# 📱 Project UTS – Aplikasi Profil Kampus Universitas Muhammadiyah Bandung

Dibuat oleh **Danial Rabbani W.S**

Aplikasi ini merupakan proyek UTS Pemrograman Mobile yang menampilkan **profil kampus UMBandung** secara interaktif, informatif, dan responsif. Aplikasi dibangun menggunakan **Flutter**, dengan fokus pada pengalaman pengguna, animasi ringan, serta navigasi yang mudah.

---

## 🚀 **Fitur Utama Aplikasi**

### 1️⃣ **Halaman Home**

Menampilkan beberapa kartu informasi menggunakan **GridView**:

* **Sejarah UMBandung**
* **Visi & Misi**
* **Fasilitas Kampus**
* **PMB Online** (langsung membuka link pmb.um-bandung.ac.id dengan `launchUrl`)
* **Lokasi Kampus** (langsung membuka Google Maps)

Setiap kartu dilengkapi:

* Efek **AnimatedScale** saat disentuh
* **Border animasi** untuk memberi kesan interaktif
* Navigasi ke halaman detail
* Khusus PMB & Lokasi, kartu langsung membuka URL eksternal

---

## 2️⃣ **Halaman Detail**

Terdiri dari dua halaman:

* **HalamanDetailSejarah**
* **HalamanDetailVisiMisi**

Masing-masing menampilkan:

* **Slider gambar**
* **Judul halaman**
* **Deskripsi lengkap**
* **Tata letak responsif** dengan `header_responsif` (widget custom)

---

## 3️⃣ **Fasilitas Kampus**

* Daftar fasilitas ditampilkan menggunakan **GridView**
* Setiap foto memiliki efek:

  * **Zoom-in** saat cursor/klik
  * Overlay tulisan fasilitas
  * Nama fasilitas tetap tampil di bawah gambar

---

## 4️⃣ **Lokasi Kampus**

* Kartu khusus lokasi menampilkan alamat lengkap
* Ketika diklik → langsung membuka **Google Maps** melalui `launchUrl()`

---

## 🧩 **Struktur Folder Project**

```
lib/
 ├── screens/
 │    ├── halaman_home.dart
 │    ├── halaman_detail_sejarah.dart
 │    ├── halaman_detail_visimisi.dart
 │    ├── halaman_grid.dart
 │
 ├── widgets/
 │    ├── header_responsif.dart
 │    ├── kartu_informasi.dart
 │
 └── main.dart
```

---

## 🛠️ **Teknologi & Widget yang Digunakan**

### 🔹 **GridView**

Digunakan pada Home untuk membuat layout kartu informasi yang rapi dan responsif.

### 🔹 **AnimatedScale**

Memberikan efek zoom saat kartu disentuh → membuat UI terasa interaktif meski di emulator Android tanpa mouse.

### 🔹 **InkWell + Material**

Memberikan efek ripple ketika tombol/kartu ditekan.

### 🔹 **launchUrl (url_launcher)**

Digunakan untuk:

* Membuka PMB Online
* Membuka Google Maps

### 🔹 **Custom Widgets**

* `header_responsif` → header dengan ukuran otomatis menyesuaikan layar
* `kartu_informasi` → UI kartu modular yang bisa dipakai ulang

### 🔹 **PageView / Carousel (Slider Gambar)**

Dipakai di halaman detail sejarah dan visi misi.

---

## 📷 **Preview Aplikasi**

*(Tambahkan screenshot jika diperlukan)*

---

## 🧑‍💻 **Cara Menjalankan Project**

1. Clone repository:

   ```
   git clone https://github.com/DanialRabbani/Project-UTS-Danial-Rabbani.git
   ```
2. Masuk ke folder:

   ```
   cd Project-UTS-Danial-Rabbani
   ```
3. Install package:

   ```
   flutter pub get
   ```
4. Jalankan aplikasi:

   ```
   flutter run
   ```

---

## 📄 **Lisensi**

Project ini dibuat untuk keperluan UTS dan bebas digunakan untuk pembelajaran.

---

## ✨ Terima Kasih

Terima kasih telah melihat repository ini!
Jika ada pengembangan lanjutan atau penambahan fitur, silakan lakukan pull request.
