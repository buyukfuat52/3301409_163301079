import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/models/kitap_model.dart';
import 'package:vize_e_kutuphane/models/person_model.dart';
import 'package:vize_e_kutuphane/screens/home_page.dart';
import 'package:vize_e_kutuphane/screens/login_page.dart';

import '../services/shared_preferences_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FutureBuilder<bool>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return HomePage(
                person: PersonModel(
                    kullaniciAdi: "Default",
                    sifre: "123",
                    isimSoyisim: "Ahmet Balaman",
                    kisiKonum: "Şırnak",
                    kitaplar: kitaplar),
              );
            } else {
              return const LoginPage();
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else {
            return const Center(
              child: Text("Hata"),
            );
          }
        },
        future: girisYapildiCheck(),
      ),
    );
  }
}
