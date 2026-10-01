import "package:flutter/material.dart";

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Mobile App Class",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 137, 3),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),

            Image.asset('images/logo.png'),

            const Text(
              "Biodata",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Serif",
                height: 1.5,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // BARIS FOTO 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(66, 42, 36, 36),
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // BARIS FOTO 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/iqbale.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATION
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
          } else if (index == 1) {
            // Kontak
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Kontak"),
              ),
            );
          } else if (index == 2) {
            // Browser
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Browser"),
              ),
            );
          } else if (index == 3) {
            // Kembali
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