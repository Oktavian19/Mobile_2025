# Stream

## Praktikum 1
### Soal 1
1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
    ```    return Scaffold(
      appBar: AppBar(title: const Text('Stream- Okta')),
      body: Container(decoration: BoxDecoration(color: bgColor)))
    ```
2. Gantilah warna tema aplikasi sesuai kesukaan Anda.
    ``` Color bgColor = Colors.blueGrey; ```
### Soal 2
1. Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
```
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.orange,
    Colors.cyan,
  ];
```
### Soal 3
1. Jelaskan fungsi keyword ```yield*``` pada kode tersebut!
- Keyword tersebut meneruskan semua isi dari stream ke ke stream ini sehingga semua event akan diteruskan secara otomatis
2. Apa maksud isi perintah kode tersebut?
- Setiap 1 detik menjalankan fungsi int t. Fungsi int t akan bertambah tiap detik dan melakukan loop di daftar colors dan mengirimkan warna saat ini

### Soal 4
1. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![gif](img/gif0.gif)

### Soal 5
1. Jelaskan perbedaan menggunakan listen dan await for!
- Fungsi listen tidak menunggu stream selesai dan dapat menggunakan subscription controller (resume, pause, cancel). Sedangkan await for digunakan pada fungsi async


