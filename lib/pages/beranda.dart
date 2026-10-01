import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Beranda"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        elevation: 10,
      ),
      body: Container(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/biodata");
              },
              child: const Text("Biodata"),
            ),

            const SizedBox(width: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/datasiswa");
              },
              child: const Text("Data Siswa"),
            ),
          ],
        ),
      ),
    );
  }
}