import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/components/my_buttons.dart';
import 'package:vize_e_kutuphane/components/my_snackbars.dart';
import 'package:vize_e_kutuphane/components/text_fieldlarim.dart';
import 'package:vize_e_kutuphane/models/person_model.dart';


import '../models/kitap_model.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController controlUserName;
  late TextEditingController controlPassword;
  late TextEditingController controlName;
  late TextEditingController controlKonum;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    controlUserName = TextEditingController();
    controlPassword = TextEditingController();
    controlName = TextEditingController();
    controlKonum = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controlUserName.dispose();
    controlPassword.dispose();
    controlName.dispose();
    controlKonum.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              const Text(
                "Register Page",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextFormUserName(controlName: controlName),
                    TextFormFieldKullanici(controlText: controlUserName),
                    TextFormFieldPassword(controllerText: controlPassword),
                    TextFormKonum(controlKonum: controlKonum),
                  ],
                ),
              ),
              KendiButonum(
                  fonksiyonum: () {
                    kisiler.add(PersonModel(kullaniciAdi: controlUserName.text, sifre: controlPassword.text, isimSoyisim: controlName.text, kisiKonum: controlKonum.text, kitaplar: kitaplar));
                   snackBarGoster(context, "Kayıt Başarılı")
;                    if (formKey.currentState!.validate()) {
                      log("Kayıt Başarılı");
                      Navigator.pop(context);
                    }
                  },
                  text: "Register"),
              const SizedBox(),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
