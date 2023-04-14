import 'package:flutter/material.dart';

class KendiButonum extends StatelessWidget {
  const KendiButonum({Key? key, required this.fonksiyonum, required this.text})
      : super(key: key);
  final Function() fonksiyonum;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: fonksiyonum,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // İstenilen köşe yarıçapı
          ),
        ),
        child: Text(text));
  }
}
