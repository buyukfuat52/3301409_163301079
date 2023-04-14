import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/components/my_gridview.dart';
import 'package:vize_e_kutuphane/components/text_fieldlarim.dart';
import 'package:vize_e_kutuphane/models/person_model.dart';
import 'package:vize_e_kutuphane/services/nesne_arama.dart';


import '../components/my_cards.dart';

class PersonSearch extends StatefulWidget {
  const PersonSearch({super.key});

  @override
  State<PersonSearch> createState() => _PersonSearchState();
}

class _PersonSearchState extends State<PersonSearch> {
  late final TextEditingController controlPerson;
  List<PersonModel> aramaInsan = [];
  @override
  void initState() {
    super.initState();
    controlPerson = TextEditingController();
  }

  @override
  void dispose() {
    controlPerson.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 8, child: aramaKutusu(controlPerson)),
                Expanded(
                    flex: 1,
                    child: TextButton(
                        onPressed: () {
                          aramaNesne(kisiler, aramaInsan,controlPerson.text);
                          setState(() {});
                        },
                        child: const Text("Ara")))
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: myGridView(
                yapi: (index) => insanCard(context, index, aramaInsan),
                dizi: aramaInsan),
          )
        ],
      ),
    );
  }
}
