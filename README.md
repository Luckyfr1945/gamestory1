2D Player Movement & Animation Demo (Godot 4)
Deskripsi Project

Project ini adalah demo game 2D sederhana menggunakan Godot 4 yang berfokus pada:

Sistem pergerakan karakter 4 arah

Penggunaan AnimatedSprite2D

Penggantian animasi berdasarkan arah gerakan

Pembatasan posisi karakter sesuai ukuran layar

Project ini dibuat sebagai fondasi untuk dikembangkan menjadi game story sederhana.

Struktur Scene
Player (Area2D)
├── AnimatedSprite2D
└── CollisionShape2D
Penjelasan Node

Area2D
Node utama karakter yang mengatur posisi dan logika pergerakan.

AnimatedSprite2D
Digunakan untuk menampilkan animasi berdasarkan arah gerakan.

CollisionShape2D
Digunakan untuk sistem collision (bisa dikembangkan lebih lanjut).

Sistem Movement

Karakter bergerak menggunakan Vector2 dengan kecepatan yang bisa diatur:

@export var kecepatan = 300.0

Movement menggunakan:

Input.is_action_pressed() untuk deteksi tombol ditekan terus

velocity.normalized() agar kecepatan diagonal tetap stabil

position.clamp() agar karakter tidak keluar layar

Input Map

Tambahkan di:

Project → Project Settings → Input Map

Action Name	Key
jalankanan	D / Right Arrow
jalankiri	A / Left Arrow
atas	W / Up Arrow
bawah	S / Down Arrow

Nama action harus sama persis dengan yang dipanggil di script.

Sistem Animasi

Animasi dikontrol dengan:

$AnimatedSprite2D.animation = "jalankanan"
$AnimatedSprite2D.animation = "atas"

Pastikan di SpriteFrames terdapat animasi dengan nama:

jalankanan

atas

Godot bersifat case-sensitive. Jika nama tidak sama persis, akan muncul error:

There is no animation with name 'jalankanan'
Logika Animasi

Jika bergerak horizontal → animasi "jalankanan"

Jika bergerak vertikal → animasi "atas"

Jika bergerak ke kiri → sprite di-flip horizontal

Jika tidak bergerak → animasi dihentikan

Cara Menjalankan

Buka project di Godot 4

Pastikan scene Player menjadi Main Scene

Tekan F5

Gunakan WASD atau Arrow Keys untuk bergerak

Tujuan Project

Project ini dibuat untuk:

Memahami dasar movement 2D

Memahami penggunaan AnimatedSprite2D

Melatih kontrol animasi berbasis arah

Menjadi fondasi pengembangan game story

Rencana Pengembangan Selanjutnya

Tambah animasi idle

Tambah animasi bawah

Tambah Camera2D

Tambah sistem dialog

Tambah sistem collision environment

Tambah sistem scene level
