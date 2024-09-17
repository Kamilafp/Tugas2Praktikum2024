# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah 
```
flutter pub get
```
Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

Buat tampilan semenarik mungkin untuk dilihat.


Nama : ___

NIM : ___

Shift Baru: ___

## Screenshot
Contoh :
![Lampiran Form](form.png)
![Lampiran Hasil](hasil.png)

Jawaban:
Prosesnya yaitu
1. Pengambilan input dari form
   TextField digunakan untuk ambil input dari user dan TextEditingController untuk mengontrol     dan dapatkan input dari user. Input dari user akan disimpan di controller masing-masing,       contoh pada input nama
   ![image](https://github.com/user-attachments/assets/75ca47a1-6729-4523-a3d0-bec5f0a8b8f3)
2. Pemrosesan dan Pengiriman Data
   Data dari TextEditingController tadi lalu dikirim ke halaman tampilan menggunakan Navigator    dan Route, data dari input (nama, nim, tahun) akan dikirim sebagai parameter ke konstruktor    halaman TampilData saat tombol simpan diklik, konstruktor tampil data
   ![image](https://github.com/user-attachments/assets/676251a0-7fba-4fde-a5b7-305b87eb5e96)

   pada bagian variabel umur terdapat logika untuk menghitung umur user berdasarkan tahun      lahir yang diinputkan
   ![image](https://github.com/user-attachments/assets/c5011856-4e59-4676-8f2b-ffbcddf0871a)

Hasilnya yaitu
![image](https://github.com/user-attachments/assets/37d6bc6d-a174-4afe-97c2-ff30c6b26859)

Saat data diinputkan
![image](https://github.com/user-attachments/assets/ccc355f7-eda0-4f5a-be53-5165cdd409d2)

Saat data disubmit
![image](https://github.com/user-attachments/assets/2f93cbfb-2341-480e-a5d4-8e262880a330)

