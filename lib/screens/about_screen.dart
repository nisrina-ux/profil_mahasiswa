import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, // Petunjuk a: Stack alignment center
        children: [
          // a) Gambar latar dengan BoxDecoration & Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // b) Teks "Tentang Aplikasi" di tengah
          const Text(
            'Tentang Aplikasi',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          // c) Tombol "Kembali" di pojok kiri atas
          Positioned( // Petunjuk b: Gunakan Positioned
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Petunjuk c: Kembali ke halaman sebelumnya
              },
            ),
          ),
        ],
      ),
    );
  }
}