import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/screens/book_detail_page.dart';


import '../components/navigatorlar.dart';
import '../models/kitap_model.dart';

class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        KitapModel kitap = kitaplar[index];
        return ListTile(
          onTap: () => navigateGit(context, BookDetailPage(kitap: kitap)),
          title: Text(kitap.kitapIsim),
          leading: Image.asset(kitap.kitapFoto),
          trailing: const Icon(Icons.arrow_right_sharp),
          subtitle: Text(kitap.kitapTur),
        );
      },
      itemCount: kitaplar.length,
    );
  }
}
