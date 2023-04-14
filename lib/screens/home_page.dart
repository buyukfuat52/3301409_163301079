import 'package:flutter/material.dart';
import 'package:vize_e_kutuphane/components/navigatorlar.dart';
import 'package:vize_e_kutuphane/models/person_model.dart';
import 'package:vize_e_kutuphane/screens/book_search.dart';
import 'package:vize_e_kutuphane/screens/login_page.dart';
import 'package:vize_e_kutuphane/screens/my_books.dart';
import 'package:vize_e_kutuphane/screens/my_profile.dart';
import 'package:vize_e_kutuphane/screens/person_search.dart';

import '../services/shared_preferences_services.dart';


class HomePage extends StatefulWidget {
  final PersonModel person;
  const HomePage({super.key, required this.person});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController sayfaKontrol;
  String hangiSayfa = "Kitaplarınız";
  @override
  void initState() {
    super.initState();
    sayfaKontrol = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    sayfaKontrol.dispose();
  }

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hangiSayfa),
      ),
      body: PageView(

        onPageChanged: (value) {
          myCurrentIndex = value;
          switch (value) {
            case 0:
              hangiSayfa = "Kitaplarınız";
              break;
            case 1:
              hangiSayfa = "Kitap Ara";
              break;
            case 2:
              hangiSayfa = "Kişi Ara";
              break;
            case 3:
              hangiSayfa = "Bilgilerim";
              break;
          }

          setState(() {});
        },
        controller: sayfaKontrol,
        children: [
          const MyBooks(),
          const BookSearch(),
          const PersonSearch(),
          MyProfile(
            person: widget.person,
          ),
        ],
      ),
      drawer: myDrawer(context),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: myCurrentIndex,

       onTap: (value) {
        myCurrentIndex = value;

        switch (value) {
          case 0:
            myCurrentIndex = value;
            sayfaKontrol.animateToPage(0,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
            break;
          case 1:
            myCurrentIndex = value;
            sayfaKontrol.animateToPage(1,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);

            break;
          case 2:
            myCurrentIndex = value;
            sayfaKontrol.animateToPage(2,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);

            break;
          case 3:
            myCurrentIndex = 3;
            sayfaKontrol.animateToPage(3,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);

            break;

          default:
        }
        setState(() {});
      },
      unselectedItemColor: Colors.grey,
      fixedColor: Colors.white,


      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Kitaplarım"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Kitap Ara"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_search_sharp), label: "Kişi Ara"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Kullanıcı")
      ],
    );
  }



  Drawer myDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(child: Icon(Icons.person)),
          ListTile(
              title: const Text("Çıkış Yap"),
              trailing: const Icon(Icons.output),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: const Text(
                          "Çıkış yapmak istediğinizden emin misiniz?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              girisYapildiIsaretle(false);
                              navigateGeriDonmedenGit(
                                  context, const LoginPage());
                            },
                            child: const Text("Evet")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Hayır"))
                      ],
                    );
                  },
                );
              })
        ],
      ),
    );
  }
}
