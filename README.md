# Vegeta Mart 🥦🥕🛒

Aplikasi mobile sederhana untuk menampilkan daftar sayuran segar, detail produk, dan simulasi penambahan ke keranjang, dibangun dengan Flutter.

## Daftar Isi

* [Tentang Aplikasi](#tentang-aplikasi)
* [Fitur](#fitur)
* [Tangkapan Layar](#tangkapan-layar)
* [Teknologi yang Digunakan](#teknologi-yang-digunakan)
* [Instalasi dan Menjalankan Aplikasi](#instalasi-dan-menjalankan-aplikasi)
* [Kontribusi](#kontribusi)

## Tentang Aplikasi

**Vegeta Mart** adalah aplikasi _e-commerce_ mini yang berfokus pada penjualan sayuran segar. Aplikasi ini dirancang untuk memberikan pengalaman menjelajah produk yang intuitif, memungkinkan pengguna untuk melihat detail sayuran, mengecek harga, dan menambahkan item ke keranjang belanja simulasi. Project ini dibuat untuk tujuan pembelajaran dan menunjukkan kemampuan dasar Flutter dalam membangun antarmuka pengguna yang menarik dan responsif.

## Fitur

Aplikasi ini mencakup beberapa fitur utama:

* **Daftar Sayuran:** Menampilkan daftar sayuran yang tersedia dalam tata letak _grid_ yang rapi dengan informasi nama, harga, dan satuan.
* **Tampilan Card Interaktif:** Setiap sayuran ditampilkan dalam _card_ yang dapat diklik untuk melihat detail lebih lanjut.
* **Kontrol Kuantitas:** Pengguna dapat menambah atau mengurangi kuantitas sayuran langsung dari daftar atau halaman detail.
* **Ikon Keranjang:** Simulasi penambahan item ke keranjang belanja.
* **Halaman Detail Produk:** Menampilkan informasi lengkap sayuran seperti gambar besar, nama, harga, satuan, dan deskripsi, setelah _card_ diklik.
* **Notifikasi Keranjang (App Bar):** Ikon keranjang di `AppBar` menunjukkan jumlah item yang ditambahkan (simulasi).
* **Navigasi AppBar:** Dilengkapi dengan ikon menu (hamburger) dan ikon pencarian.

## Tangkapan Layar

Berikut adalah beberapa tangkapan layar dari aplikasi Vegeta Mart:
<table>
  <tr>
    <td align="center">
      <b>Halaman Utama</b><br/>
      <img src="https://github.com/rizaljael/vegeta_mart/blob/main/screenshots/Screenshot_1750124512.png?raw=true" width="250px" alt="Screenshot Halaman Utama">
    </td>
    <td align="center">
      <b>Daftar Sayuran (Scroll)</b><br/>
      <img src="https://github.com/rizaljael/vegeta_mart/blob/main/screenshots/Screenshot_1750124523.png?raw=true" width="250px" alt="Screenshot Daftar Sayuran">
    </td>
    <td align="center">
      <b>Halaman Detail</b><br/>
      <img src="https://github.com/rizaljael/vegeta_mart/blob/main/screenshots/Screenshot_1750124533.png?raw=true" width="250px" alt="Screenshot Halaman Detail">
    </td>
  </tr>
  </table>

## Teknologi yang Digunakan

* **Flutter:** Framework UI untuk membangun aplikasi _multi-platform_ dari satu _codebase_.
* **Dart:** Bahasa pemrograman yang digunakan oleh Flutter.
* **`intl` package:** Untuk memformat mata uang (Rupiah).

## Instalasi dan Menjalankan Aplikasi

Ikuti langkah-langkah di bawah ini untuk menginstal dan menjalankan aplikasi ini di lingkungan pengembangan lokal Anda:

1.  **Kloning Repositori:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/vegeta_mart.git](https://github.com/YOUR_USERNAME/vegeta_mart.git)
    cd vegeta_mart
    ```
    _Ganti `YOUR_USERNAME` dengan username GitHub Anda._

2.  **Pastikan Flutter SDK Terinstal:**
    Jika Anda belum memiliki Flutter SDK, ikuti panduan instalasi resmi [di sini](https://flutter.dev/docs/get-started/install).

3.  **Dapatkan Dependencies:**
    Di direktori project, jalankan:
    ```bash
    flutter pub get
    ```

4.  **Siapkan Aset Gambar:**
    Pastikan semua gambar sayuran (`sayur1.png` hingga `sayur10.png` atau sesuai jumlah gambar Anda) berada di folder `assets/png/`. Anda perlu membuat folder ini jika belum ada:
    ```
    vegeta_mart/
    └── assets/
        └── png/
            ├── sayur1.png
            ├── sayur2.png
            └── ...
    ```
    Dan pastikan `assets/png/` terdaftar di `pubspec.yaml`:
    ```yaml
    flutter:
      uses-material-design: true
      assets:
        - assets/png/
    ```

5.  **Jalankan Aplikasi:**
    Hubungkan perangkat atau emulator Anda, lalu jalankan:
    ```bash
    flutter run
    ```

## Kontribusi

Kontribusi disambut baik! Jika Anda memiliki saran, perbaikan _bug_, atau ingin menambahkan fitur baru, silakan buka _issue_ atau kirim _pull request_.


---
