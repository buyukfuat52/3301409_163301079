import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/components/navigatorlar.dart';
import 'package:vize_e_kutuphane/screens/book_detail_page.dart';
import '../screens/person_detail_page.dart';

Card insanCard(BuildContext context, int index, List aramaInsan) {
  return Card(
    child: InkWell(
      onTap: () =>
          navigateGit(context, PersonDetailPage(person: aramaInsan[index])),
      child: Column(
        children: [
          const Expanded(flex: 10, child: Icon(Icons.person)),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(aramaInsan[index].isimSoyisim),
            ),
          )
        ],
      ),
    ),
  );
}

Card kitapCard(BuildContext context, int index, List aramaKitap) {
  return Card(
    child: InkWell(
      onTap: () =>
          navigateGit(context, BookDetailPage(kitap: aramaKitap[index])),
      child: Column(
        children: [
          Expanded(flex: 10, child: Image.asset(aramaKitap[index].kitapFoto)),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(aramaKitap[index].kitapIsim),
            ),
          )
        ],
      ),
    ),
  );
}
