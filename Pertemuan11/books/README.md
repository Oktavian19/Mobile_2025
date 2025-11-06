# Books API

## Soal 1
Menambahkan nama panggilan pada title app

```
appBar: AppBar(
title: const Text('Back from the Future - Oktavian'),
),
```

## Soal 2
Mengakses data API google.books

API: [Google API](https://www.googleapis.com/books/v1/volumes/abYKXvCwEToC)

![SS Browser](img/image.png)

## Soal 3
1. Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
- ```substring``` digunakan untuk mengambil sebagian teks dari hasil value.body. Sebagian teks yang dimaksud diperjelas pada parameter (0,450) yang mengambil karakter pada indeks 0 hingga 449.
- ```catchError``` digunakan untuk menangani kesalahan yang mungkin terjadi selama eksekusi ```getData()```
2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- ![SS Browser](img/gif1.gif)

## Soal 4
1. Jelaskan maksud kode langkah 1 dan 2 tersebut!
- Kode return one,two dan three async masing-masing menunggu selama 3 detik untuk kemudian melakukan return angka 1, 2 dan 3. Ketiga return tersebut dipanggil pada fungsi ``` Future count() async``` dan akan melakukan update UI ketika ketiga proses tersebut selesai
2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- ![SS Browser](img/gif2.gif)