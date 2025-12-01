# 📘 **Aplikasi Profil Kampus Universitas Muhammadiyah Bandung**

Aplikasi Flutter yang menampilkan informasi resmi mengenai Universitas Muhammadiyah Bandung (UMBandung).
Dibangun sebagai tugas UTS mata kuliah **Pemrograman Perangkat Bergerak (PPB)**.

Aplikasi ini menyediakan halaman profil kampus yang modern, responsif, dan mudah digunakan, dengan navigasi antar halaman serta integrasi tautan eksternal menggunakan `url_launcher`.

---

## 📱 **Fitur Utama**

### **1. Halaman Grid Informasi (Home)**

Menampilkan beberapa kartu informasi utama kampus:

* **Sejarah UMBandung**
* **Visi & Misi**
* **Fasilitas Kampus**
* **PMB Online (Ayo Daftar Sekarang)**
* **Lokasi Kampus**

Setiap kartu dibuat menggunakan **Widget Kustom `KartuInformasi`** dan ditampilkan dalam **GridView** agar responsif di berbagai ukuran layar.

---

### **2. Halaman Sejarah**

Menampilkan:

* Judul halaman
* Deskripsi sejarah kampus
* Tulisan **"Tentang Kami"** di bagian atas sesuai kebutuhan
* Tampilan teks yang rapi dengan line-height yang nyaman dibaca

---

### **3. Halaman Visi & Misi**

Menampilkan:

* Visi resmi kampus
* Daftar misi
* Penataan teks responsif dan bersih

---

### **4. Halaman Fasilitas Kampus**

Menampilkan daftar fasilitas seperti:

* Ruang kelas
* Laboratorium
* Perpustakaan
* Area umum
* Fasilitas pendukung mahasiswa

---

### **5. PMB Online**

Kartu khusus bertuliskan **"Ayo Daftar ke UMBandung"** yang ketika diklik langsung membuka halaman PMB resmi menggunakan:

```
launchUrl(
  Uri.parse("https://pmb.umbandung.ac.id"),
  mode: LaunchMode.externalApplication,
);
```

---

### **6. Lokasi Kampus (Google Maps)**

Fitur:

* Menampilkan alamat lengkap
* Saat kartu diklik langsung membuka Google Maps menggunakan `url_launcher`
* Dibuat dengan animasi `AnimatedScale` untuk efek interaktif

---

## 🧩 **Struktur Folder**

```
lib/
│
├── screens/
│   ├── halaman_home.dart
│   ├── halaman_detail.dart
│   └── halaman_grid.dart
│
└── widgets/
    ├── header_responsif.dart
    └── kartu_informasi.dart
```

---

## 🛠 **Teknologi yang Digunakan**

* **Flutter** (SDK terbaru)
* **Dart**
* **Material Design Components**
* **GridView** → menampilkan menu utama
* **AnimatedScale** → efek animasi saat kartu ditekan
* **InkWell** → interaksi tap dengan efek splash
* **Navigator.push()** → berpindah halaman
* **url_launcher** → membuka tautan ke browser / Maps

---

## 📦 **Dependencies**

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  url_launcher: ^6.2.6
```

---

## 📂 **Cara Menjalankan Proyek**

1. Clone repository:

```sh
git clone https://github.com/DanialRabbani/Project-UTS-Danial-Rabbani
```

2. Masuk ke folder project:

```sh
cd Project-UTS-Danial-Rabbani
```

3. Install dependency:

```sh
flutter pub get
```

4. Jalankan aplikasi:

```sh
flutter run
```

---

## ✍️ **Author**

Nama  : **Danial Rabbani**
Prodi : Teknik Informatika
NIM   : 220102022
Universitas Muhammadiyah Bandung
