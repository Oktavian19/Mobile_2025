### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```

### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

### Jawab
![Foto Soal](img\image.png)

Variabel test memiliki nilai test2 sehingga dart melakukan print Test2. Kemudian variabel test dicek kembali untuk melakukan print Test2 again

### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.
### Jawab
Terjadi 2 error pada kode tersebut. Error pertama mengarah pada duplikasi pada inisialisasi variabel. Solusinya adalah dengan menghapus tipe data string pada variabel test kedua atau mengubah nama variabel test menjadi test2 atau yang lain. Error kedua mengarah pada penggunaan variabel test sebagai kondisi if else. Variabel test merupakan String sehingga tidak memenuhi syarat kondisi. Solusinya adalah mengubah variabel test bertipe data boolean atau menambahkan pembanding pada variabel test seperti pada kode berikut
```
  test = "true";
  if (test == "true") {
    print("Kebenaran");
  }
```