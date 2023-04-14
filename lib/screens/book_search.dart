import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/components/my_cards.dart';
import 'package:vize_e_kutuphane/components/my_gridview.dart';
import 'package:vize_e_kutuphane/models/kitap_model.dart';

import '../components/text_fieldlarim.dart';
import '../services/nesne_arama.dart';

class BookSearch extends StatefulWidget {
  const BookSearch({super.key});

  @override
  State<BookSearch> createState() => _BookSearchState();
}

class _BookSearchState extends State<BookSearch> {
  late final TextEditingController controlBook;
  @override
  void dispose() {
    controlBook.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controlBook = TextEditingController();
  }

  List<KitapModel> aramaKitap = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(

        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: aramaKutusu(controlBook),
                ),
                Expanded(
                    flex: 1,
                    child: TextButton(
                        onPressed: () {
                          aramaNesne(kitaplar, aramaKitap, controlBook.text);
                          setState(() {});
                        },
                        child: const Text("Ara")))
              ],
            ),
          ),
          Expanded(
              flex: 10,
              child: myGridView(
                  yapi: (index) => kitapCard(context, index, aramaKitap),
                  dizi: aramaKitap))
        ],
      ),
    );
  }
}
