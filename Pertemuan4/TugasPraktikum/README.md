## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

## Jawaban
1. Sudah
2. Function dalam dart adalah kode program yang dapat digunakan kembali untuk melakukan tugas tertentu. Function membantu menyusun kode menjadi bagian-bagian yang lebih kecil, modular, dan lebih mudah dikelola
3. Beberapa jenis parameter pada dart:
- Required Parameter: Parameter standar yang wajib diisi (sesuai urutan) ketika fungsi dipanggil.
- Optional Positional Parameter: Dibungkus dengan kurung siku []. Urutannya perlu diperhatikan jika diisi, dan terdapat simbol null safety
- Optional Named Parameters: Dibungkus dengan kurung kurawal {}. Urutan pemanggilan tidak perlu diperhatikan namun nama parameter harus disebutkan.
- Default Parameter Values: Diberikan pada optional parameter dengan tanda sama dengan setelah tipe data dan nama variabel.
4. Functions memiliki status yang sama seperti objek lain misalnya String, int atau List. Hal ini menunjukkan bahwa function dapat disimpan dalam sebuah variabel, dilewatkan sebagai argumen ke fungsi lain, dan dikembalikan sebagai nilai dari fungsi lain.
Contoh sintaks:
```
void sapa(String nama) {
  print('Halo, $nama!');
}

void prosesNama(String nama, Function aksi) {
  aksi(nama);
}

Function pengali(int faktor) {
  return (int angka) => angka * faktor;
}

void main() {
  var fungsiSapa = sapa;
  fungsiSapa('Andi');

  prosesNama('Citra', sapa);

  var kaliDua = pengali(2);
  var kaliTiga = pengali(3);

  print(kaliDua(10)); // Output: 20
  print(kaliTiga(10)); // Output: 30
}
```
5. Anonymous function adalah fungsi yang tidak memiliki nama. Fungsi ini biasanya digunakan untuk tugas-tugas singkat dan sering digunakan untuk fungsi lain.
Contoh Anonymous Function:
```
var pangkatDua = (int x) => x * x;
print(pangkatDua(5));
```
6. Kedua konsep ini memilikii kemiripan
- Lexical Scope: berarti jangkauan visibilitas variabel ditentukan oleh lokasi variabel tersebut dalam kode sumber. Sebuah blok kode di dalam blok kode lain dapat mengakses variabel dari blok luarnya
Contoh:
```
String levelAtas = "Saya variabel global";

void main() {
  String levelMain = "Saya variabel di main";

  void fungsiDalam() {
    String levelDalam = "Saya variabel lokal";
    print(levelAtas);     // Bisa akses variabel global
    print(levelMain);    // Bisa akses variabel di lingkup atasnya (main)
    print(levelDalam);   // Bisa akses variabel lokal sendiri
  }

  fungsiDalam();
  // print(levelDalam); // Error! Tidak bisa mengakses variabel dari lingkup di dalamnya.
}
```
- Lexical Closure: adalah sebuah objek fungsi yang mengingat lingkup leksikal tempat ia didefinisikan, bahkan ketika fungsi dijalankan diluar lingkup aslinya.
Contoh:
```
Function buatPenghitung() {
  int hitungan = 0; // Variabel ini ada di lingkup buatPenghitung

  void penambah() {
    hitungan++; // Mengakses dan memodifikasi variabel 'hitungan'
    print(hitungan);
  }

  return penambah; // Mengembalikan fungsi 'penambah'
}

void main() {variabel 'hitungan'.
  var counter = buatPenghitung();

  counter(); // Output: 1
  counter(); // Output: 2
  counter(); // Output: 3
}
```
7. Return Multiple Values dapat menggunakan Records.
Contoh:
```
({String nama, int umur}) getProfilRecordNamed() {
    return (nama: 'Eko', umur: 35);
}


void main() {
  var profil = getProfilRecordNamed();
  print('Nama: ${profil.nama}, Umur: ${profil.umur}');
}
```