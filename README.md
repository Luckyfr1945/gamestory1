# 2D Player Movement & Animation Demo (Godot 4)

## Deskripsi Project

Project ini adalah demo game 2D sederhana menggunakan Godot 4 yang berfokus pada:

- Sistem pergerakan karakter 4 arah
- Penggunaan `AnimatedSprite2D`
- Penggantian animasi berdasarkan arah gerakan
- Pembatasan posisi karakter sesuai ukuran layar

Project ini dibuat sebagai fondasi untuk dikembangkan menjadi game story sederhana.

---

## Struktur Scene

```
Player (Area2D)
├── AnimatedSprite2D
└── CollisionShape2D
```

### Penjelasan Node

**Area2D**  
Node utama karakter yang mengatur posisi dan logika pergerakan.

**AnimatedSprite2D**  
Digunakan untuk menampilkan animasi berdasarkan arah gerakan.

**CollisionShape2D**  
Digunakan untuk sistem collision (bisa dikembangkan lebih lanjut).

---

## Sistem Movement

Karakter bergerak menggunakan `Vector2` dengan kecepatan yang bisa diatur:

```gdscript
@export var kecepatan = 300.0
```

Movement menggunakan:

- `Input.is_action_pressed()`
- `velocity.normalized()`
- `position.clamp(Vector2.ZERO, screen_size)`

---

## Input Map

Tambahkan di:

`Project → Project Settings → Input Map`

| Action Name | Key |
|-------------|------|
| jalankanan  | D / Right Arrow |
| jalankiri   | A / Left Arrow |
| atas        | W / Up Arrow |
| bawah       | S / Down Arrow |

---

## Sistem Animasi

Pastikan pada `SpriteFrames` terdapat animasi dengan nama:

- `jalankanan`
- `atas`

Nama animasi harus sama persis (case-sensitive).

Jika tidak, akan muncul error seperti:

```
There is no animation with name 'jalankanan'
```

---

## Cara Menjalankan

1. Buka project di Godot 4
2. Pastikan scene Player menjadi Main Scene
3. Tekan F5
4. Gunakan WASD atau Arrow Keys untuk bergerak

---

## Rencana Pengembangan

- Tambah animasi idle
- Tambah animasi arah bawah
- Tambah Camera2D
- Tambah sistem dialog
- Tambah sistem collision environment
- Kembangkan menjadi game story

---

## Engine

Godot 4.x Stable
