import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Cara Menggunakan Aplikasi:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Kelompok 4 TPM-H telah menyediakan aplikasi mobile yang dibuat untuk menyelesaikan tugas TPM 4. Aplikasi ini menyediakan berbagai menu yang dapat diakses oleh pengguna. Bagaimana cara penggunaan aplikasi mobile ini akan dibahas pada panduan sebagai berikut:'),
            SizedBox(height: 16.0),
            Text(
              'A. Menu Daftar Anggota',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Berikut ini adalah langkah-langkah untuk mengakses menu daftar anggota dalam aplikasi mobile Kelompok 4:\n'
              '1. Pada halaman Menu Utama, klik menu Daftar Anggota \n'
              '2. Setelah masuk ke halaman menu Daftar Anggota, pengguna dapat melihat gambar, nama, dan nomor mahasiswa dari masing-masing anggota kelompok',
            ),
            SizedBox(height: 8.0),
            Text(
              'B. Menu Stopwatch',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed molestie euismod nulla, sit amet semper mi blandit ac. Suspendisse eget feugiat enim. Nulla facilisi. Duis tincidunt elit nec enim dictum sagittis. Nam commodo commodo tellus sed posuere. Donec id nisi in tellus feugiat consectetur. Nam lacinia ligula nec orci facilisis, sed euismod libero rutrum. Integer sed odio id diam bibendum commodo vel et nunc.',
            ),
            SizedBox(height: 8.0),
            Text(
              'C. Menu Playlist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed molestie euismod nulla, sit amet semper mi blandit ac. Suspendisse eget feugiat enim. Nulla facilisi. Duis tincidunt elit nec enim dictum sagittis. Nam commodo commodo tellus sed posuere. Donec id nisi in tellus feugiat consectetur. Nam lacinia ligula nec orci facilisis, sed euismod libero rutrum. Integer sed odio id diam bibendum commodo vel et nunc.',
            ),
            SizedBox(height: 8.0),
            Text(
              'D. Menu Favorite',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed molestie euismod nulla, sit amet semper mi blandit ac. Suspendisse eget feugiat enim. Nulla facilisi. Duis tincidunt elit nec enim dictum sagittis. Nam commodo commodo tellus sed posuere. Donec id nisi in tellus feugiat consectetur. Nam lacinia ligula nec orci facilisis, sed euismod libero rutrum. Integer sed odio id diam bibendum commodo vel et nunc.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Jika Anda mengalami kesulitan dalam menggunakan aplikasi ini, silakan hubungi kami melalui email atau telepon.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

