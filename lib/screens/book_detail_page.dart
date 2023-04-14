import 'package:flutter/material.dart';

import '../models/kitap_model.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key, required this.kitap});
  final KitapModel kitap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kitap.kitapIsim),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
                child: Image.asset(kitap.kitapFoto)),
            SizedBox(
              width: 110,
                child: Text(kitap.kitapIsim)),
            SizedBox(
              width: 110,
                child: Text("Tür:${kitap.kitapTur}")),
            SizedBox(
              width: 110,
                child: Text("Yazar: ${kitap.yazar}")),
          ],
        ),
      ),
    );
  }
}
