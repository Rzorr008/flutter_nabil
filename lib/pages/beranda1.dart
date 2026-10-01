import 'package:flutter/material.dart';

class Beranda1 extends StatelessWidget {
  const Beranda1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Halaman Beranda"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 10,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Icon(
                Icons.school,
                size: 80,
                color: Colors.orange,
              ),

              const SizedBox(height: 10),

              const Text(
                "Selamat Datang",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                "Silakan pilih menu yang tersedia",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // =========================
              // BARIS 1
              // =========================
              Row(
                children: [
                  Expanded(
                    child: menuButton(
                      context,
                      icon: Icons.person,
                      title: "Biodata",
                      color: Colors.blue,
                      route: "/biodata",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: menuButton(
                      context,
                      icon: Icons.people,
                      title: "Data Siswa",
                      color: Colors.green,
                      route: "/datasiswa",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // =========================
              // BARIS 2
              // =========================
              Row(
                children: [
                  Expanded(
                    child: menuButton(
                      context,
                      icon: Icons.school,
                      title: "Data Sekolah",
                      color: Colors.red,
                      route: "/datasekolah",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: menuButton(
                      context,
                      icon: Icons.computer,
                      title: "Konsentrasi Keahlian",
                      color: Colors.purple,
                      route: "/konsentrasikeahlian",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // =========================
      // NAVIGASI BAWAH
      // =========================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          // HOME
          if (index == 0) {
            // Tetap di halaman ini
          }

          // KONTAK
          else if (index == 1) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Kontak"),
              ),
            );
          }

          // BROWSER
          else if (index == 2) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Browser"),
              ),
            );
          }

          // LOGOUT
          else if (index == 3) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/home",
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
            icon: Icon(Icons.logout),
            label: "Logout",
          ),
        ],
      ),
    );
  }

  // =========================
  // MENU BUTTON
  // =========================
  Widget menuButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required String route,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(15),

        onTap: () {
          Navigator.pushNamed(
            context,
            route,
          );
        },

        child: Container(
          height: 140,
          padding: const EdgeInsets.all(15),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 45,
                color: color,
              ),

              const SizedBox(height: 10),

              Text(
                title,
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}