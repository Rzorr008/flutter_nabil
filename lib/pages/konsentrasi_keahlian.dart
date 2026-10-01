import 'package:flutter/material.dart';

class Konsentrasikeahlian extends StatelessWidget {
  const Konsentrasikeahlian ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: const Text("FORM KONSENTRASI KEAHLIAN"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          shadowColor: Colors.black,
          elevation: 10),
      body: SingleChildScrollView(
        child:  Column(
        children: [
          const SizedBox(height: 30),
          Container(
            child: const Center(
                child: Text("Masukkan Data KK",
                    style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold))),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                    labelText: "Id KK",
                    hintText: "Masukan Id KK",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                    labelText: "Nama KK",
                    hintText: "Masukan Nama KK",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/biodata");
                },
                child: const Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/beranda");
                },
                child: const Text(
                  "Selesai",
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  currentIndex: 0,
  elevation: 0,
  backgroundColor: Colors.white,
  selectedItemColor: Colors.orange,
  unselectedItemColor: Colors.grey,

  onTap: (index) {
    if (index == 0) {
      // Home
      Navigator.pushNamedAndRemoveUntil(
        context,
        "/beranda1",
        (route) => false,
      );
    }

    else if (index == 1) {
      // Kontak
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Menu Kontak"),
        ),
      );
    }

    else if (index == 2) {
      // Browser
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Menu Browser"),
        ),
      );
    }

    else if (index == 3) {
      // Kembali ke Beranda
      Navigator.pushNamedAndRemoveUntil(
        context,
        "/beranda1",
        (route) => false,
      );
    }
  },

  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.contact_phone),
      label: "Kontak",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.language),
      label: "Browser",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.arrow_back),
      label: "Kembali",
    ),
  ],
),
    );
  }
}