# PCM Benowo Inventory Management

Aplikasi manajemen aset, modal, dan usaha PCM Benowo berbasis PHP + MySQL.

## 📌 Fitur
- Login & Logout (Session PHP)
- CRUD Aset, Modal, dan Usaha
- Impor Data Aset dari Excel (PhpSpreadsheet)
- Laporan PDF (Dompdf)
- Dashboard Statistik (Chart.js)

## 📂 Struktur Folder
```
PCM_Benowo/
├── database/        # File database SQL
├── assets/          # CSS, JS, gambar
├── includes/        # File PHP pendukung
├── index.php        # Halaman utama
└── README.md
```

## 🛠 Instalasi Lokal (XAMPP)
1. Clone repository:
   ```bash
   git clone https://github.com/username/PCM_Benowo.git
   ```
2. Pindahkan folder ke:
   ```
   C:\xampp\htdocs\PCM_Benowo
   ```
3. Import database:
   - Buka **phpMyAdmin** → Buat database `pcm_db`
   - Import file `database/pcm_db.sql`
4. Ubah konfigurasi database di `includes/koneksi.php`:
   ```php
   $host = "localhost";
   $user = "root";
   $pass = "";
   $db   = "pcm_db";
   ```
5. Jalankan di browser:
   ```
   http://localhost/PCM_Benowo
   ```

## 🔑 Login Admin
- **Email:** Admin@go.id
- **Password:** (reset lewat phpMyAdmin jika lupa)

## 📜 Lisensi
MIT License
