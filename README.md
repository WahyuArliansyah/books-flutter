# Books Wahyu Arliansyah

## Soal 2 (Capture JSON)

![soal2](images/api-json.png)

## Soal 3 (Gif)

### Substring untuk Membatasi Hasil Respon API

Anda dapat menggunakan `substring` untuk membatasi hasil respon API hanya 450 karakter pertama. Ini berguna untuk menjaga tampilan UI agar tetap rapi.

### CatchError untuk Menangani Error

Gunakan `catchError` untuk menangani error yang mungkin terjadi selama proses pengambilan data. Ini akan memperbarui UI dengan pesan error yang sesuai.

![soal3](images/soal3.gif)

## Soal 4

### Langkah 1

Membuat fungsi `asynchronous` yang menunggu setiap 3 detik (`returnOneAsync`, `returnTwoAsync`, dan `returnThreeAsync`) dan mengembalikan nilai integer

### Langkah 2

Memanggil fungsi-fungsi `asynchronous` tersebut secara berurutan, menunggu setiap fungsi selesai, dan menjumlahkan hasilnya.

![soal4](images/soal4.gif)

## Soal 5

`calculate` adalah fungsi asynchronous yang menunggu 5 detik, lalu menyelesaikan Future yang terkait dengan `completer` menggunakan `completer.complete(42)`.

![soal5](images/soal5.gif)

## Soal 6

Perbedaan nya adalah codingan dilangkah ke 2 lebih sederhana namun gampang error, sedangkan dilangkah 5-6 lebih aman dan roubust karena adanya mekanisme penanganan error.

![soal6](images/soal6.gif)

## Soal 7

![soal7](images/soal7.gif)

## Soal 8

Perbedaan nya adalah jika menggunalan `FutureGroup` lebih cocok jika perlu menambahkan `Future` secara dinamis, namun kurang efektif dan gampang error, sedangkan `Future.wait` lebih sederhana, efektif, dan aman.

## Soal 9

![soal9](images/soal9.gif)

## Soal 10

Jika di run hasilnya program akan menjalankan `returnError()` secara asynchronus, misalkan terjadi error UI akan menampilkan pesan error tetapi jika tidak UI akan menampilkan pesan `Success`.
`returnError()` adalah method yang mensimulasikan operasi gagal dengan melempar exception setelah menunggu 2 detik. Sedangkan `handleError()` adalah method untuk menangani error yang mungkin terjadi saat menjalankan `returnError()`, serta memperbarui UI dan menjalankan blok `finally`.
