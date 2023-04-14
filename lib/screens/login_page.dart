import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/screens/home_page.dart';
import 'package:vize_e_kutuphane/screens/register_page.dart';

import '../components/my_buttons.dart';
import '../components/my_snackbars.dart';
import '../components/navigatorlar.dart';
import '../components/text_fieldlarim.dart';
import '../models/person_model.dart';
import '../services/shared_preferences_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController controlUserName;
  late TextEditingController controlPassword;
  @override
  void initState() {
    super.initState();
    controlUserName = TextEditingController();
    controlPassword = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controlUserName.dispose();
    controlPassword.dispose();
  }

  bool girisBasarili = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2630),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.wallet,
                      size: 50,
                    ),
                    Text("Admin Panel"),
                    Text("Please Login"),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldKullanici(controlText: controlUserName),
                    TextFormFieldPassword(controllerText: controlPassword),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KendiButonum(
                    fonksiyonum: () {
                      for (PersonModel e in kisiler) {
                        if (controlUserName.text == e.kullaniciAdi &&
                            controlPassword.text == e.sifre) {
                          girisYapildiIsaretle(true);
                          navigateGeriDonmedenGit(
                              context,
                              HomePage(
                                person: e,
                              ));
                          girisBasarili = true;
                        }
                      }
                      if (girisBasarili) {
                        snackBarGoster(context, "Giriş Başarılı");
                      } else {
                        snackBarGoster(context, "Giriş Başarısız");
                      }
                    },
                    text: "Login",
                  ),
                  KendiButonum(
                    fonksiyonum: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ));
                    },
                    text: "Register",
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
