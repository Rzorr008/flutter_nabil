import 'package:flutter/material.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.orange,
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // HOME
            _button(
              context,
              Icons.home,
              "Home",
              () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/beranda",
                  (route) => false,
                );
              },
            ),

            // KONTAK
            _button(
              context,
              Icons.phone,
              "Kontak",
              () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Kontak"),
                      content: const Text(
                        "Email: siswa@gmail.com\n"
                        "No. HP: 08xxxxxxxxxx",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Tutup"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),

            // BROWSER
            _button(
              context,
              Icons.language,
              "Browser",
              () {
                html.window.open(
                  "https://www.google.com",
                  "_blank",
                );
              },
            ),

            // KEMBALI
            _button(
              context,
              Icons.arrow_back,
              "Kembali",
              () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 23,
            ),
            const SizedBox(height: 3),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}