import 'package:shared_preferences/shared_preferences.dart';

Future<void> girisYapildiIsaretle(bool deger) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("girisYapildiCheck", deger);
}

Future<bool> girisYapildiCheck() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool alinacakDeger = prefs.getBool("girisYapildiCheck") ??
      false; //getBool null gelme ihtimaline karşı ?? işareti ile varsayılan değeri false olur
  return alinacakDeger;
}
