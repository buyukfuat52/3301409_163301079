import 'kitap_model.dart';

class PersonModel {
  String kullaniciAdi;
  String sifre;
  String isimSoyisim;
  String kisiKonum;
  List<KitapModel> kitaplar;
  PersonModel(
      {required this.kullaniciAdi,
      required this.sifre,
      required this.isimSoyisim,
      required this.kisiKonum,
      required this.kitaplar});
}

List<PersonModel> kisiler = [
  PersonModel(
      kullaniciAdi: "ahmet",
      sifre: "ahmet",
      isimSoyisim: "ahmet balaman",
      kisiKonum: "şırnak",
      kitaplar: kitaplar),
  PersonModel(
      kullaniciAdi: "fuat",
      sifre: "fuat",
      isimSoyisim: "fuat büyük",
      kisiKonum: "denizli",
      kitaplar: kitaplar),
  PersonModel(
      kullaniciAdi: "ayşe",
      sifre: "ayşe",
      isimSoyisim: "ayşe demir",
      kisiKonum: "istanbul",
      kitaplar: kitaplar),
];
