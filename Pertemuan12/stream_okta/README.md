# Stream

## Praktikum 1
1. Jelaskan fungsi keyword ```yield*``` pada kode tersebut!
- Keyword tersebut meneruskan semua isi dari stream ke ke stream ini sehingga semua event akan diteruskan secara otomatis
2. Apa maksud isi perintah kode tersebut?
- Setiap 1 detik menjalankan fungsi int t. Fungsi int t akan bertambah tiap detik dan melakukan loop di daftar colors dan mengirimkan warna saat ini
3. Jelaskan perbedaan menggunakan listen dan await for!
- Fungsi listen tidak menunggu stream selesai dan dapat menggunakan subscription controller (resume, pause, cancel). Sedangkan await for digunakan pada fungsi async

![gif](img/gif0.gif)

