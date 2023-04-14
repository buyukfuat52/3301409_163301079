import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/models/person_model.dart';


class MyProfile extends StatelessWidget {
  final PersonModel person;
  const MyProfile({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 20),
      child: Column(
        children: [
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex:5,
                  child: Column
                    (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),

                    FittedBox(
                      child: Text(
                        person.isimSoyisim,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        person.kisiKonum,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),


                  ],),
                ),
                Expanded(
                  flex:2,
                  child: Container(
                    width: double.infinity,


                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    child: FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Okuduğunuz Kitap Sayısı",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            person.kitaplar.length.toString(),
                            style:
                                const TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Text("Bazı Kitaplarınız"),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 10,
                          child: Image.asset(person.kitaplar[index].kitapFoto)),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(person.kitaplar[index].kitapIsim),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
