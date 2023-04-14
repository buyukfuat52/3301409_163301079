import 'package:flutter/material.dart';

class TextFormFieldPassword extends StatelessWidget {
  const TextFormFieldPassword({
    Key? key,
    required this.controllerText,
  }) : super(key: key);
  final TextEditingController controllerText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "lütfen şifrenizi boş bırakmayınız";
        }
        return null;
      },
      controller: controllerText,
      obscureText: true,
      decoration: const InputDecoration(
          hintText: "Şifre",
          prefixIcon: Icon(
            Icons.key,
            color: Colors.blue,
          )),
    );
  }
}

class TextFormFieldKullanici extends StatelessWidget {
  const TextFormFieldKullanici({Key? key, required this.controlText})
      : super(key: key);

  final TextEditingController controlText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "Lütfen boş bırakmayınız";
        }
        return null;
      },
      controller: controlText,
      decoration: const InputDecoration(
          hintText: "Kullanıcı adı",
          prefixIcon: Icon(
            Icons.person,
            color: Colors.blue,
          )),
    );
  }
}

class TextFormKonum extends StatelessWidget {
  const TextFormKonum({
    Key? key,
    required this.controlKonum,
  }) : super(key: key);

  final TextEditingController controlKonum;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: "Konum",
        prefixIcon: Icon(
          Icons.gps_fixed,
          color: Colors.blue,
        ),
      ),
      controller: controlKonum,
      validator: (value) {
        if (value!.isEmpty) {
          return "Lütfen konum doldurunuz";
        }
        return null;
      },
    );
  }
}

class TextFormUserName extends StatelessWidget {
  const TextFormUserName({
    Key? key,
    required this.controlName,
  }) : super(key: key);

  final TextEditingController controlName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: "Isim ve Soyisim",
        prefixIcon: Icon(
          Icons.person_pin_circle_rounded,
          color: Colors.blue,
        ),
      ),
      controller: controlName,
      validator: (value) {
        if (value!.isEmpty) {
          return "Lütfen isim doldurunuz";
        }
        return null;
      },
    );
  }
}

TextField aramaKutusu(TextEditingController controlInsan) {
  return TextField(
    controller: controlInsan,
    style: const TextStyle(color: Colors.black),
    decoration: const InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffix: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: "Arama",
        hintStyle: TextStyle(color: Colors.black)),
  );
}
