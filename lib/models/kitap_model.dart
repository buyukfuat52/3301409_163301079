class KitapModel {
  final String id;
  final String kitapIsim;
  final String kitapFoto;
  final String kitapTur;
  final String yazar;

  KitapModel(
      {required this.id,
      required this.kitapIsim,
      required this.kitapFoto,
      required this.kitapTur,
      required this.yazar});
}

List<KitapModel> kitaplar = [
  KitapModel(
      id: "1",
      kitapIsim: "Uçurtma Avcısı",
      kitapFoto: "assets/Uçurtma Avcısı.jpg",
      kitapTur: "Dram",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Metal Fırtına 1",
      kitapFoto: "assets/Metal Fırtına 1.jpg",
      kitapTur: "Roman,Kurgu",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Metal Fırtına 2",
      kitapFoto: "assets/Metal Fırtına 2.jpg",
      kitapTur: "Roman,Kurgu",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Metal Fırtına 3",
      kitapFoto: "assets/Metal Fırtına 3.jpg",
      kitapTur: "Roman,Kurgu",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Metal Fırtına 4",
      kitapFoto: "assets/Metal Fırtına 4.jpg",
      kitapTur: "Roman,Kurgu",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Peygamberler Tarihi",
      kitapFoto: "assets/Peygamberler Tarihi.jpg",
      kitapTur: "Din",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Cemaütül Tevarih",
      kitapFoto: "assets/Cemaütül Tevarih.jpg",
      kitapTur: "Tarih",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Sahih-İ Buhari Tercüme Ve Şerhi",
      kitapFoto: "assets/Buhari Hadis.jpg",
      kitapTur: "Din",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "Flutter ile Mobil Uygulama Geliştirme",
      kitapFoto: "assets/Flutter mobil uygulama geliştirme.jpg",
      kitapTur: "Yazılım",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "İnografik 2. Dünya Savaşı",
      kitapFoto: "assets/İnografik 2. Dünya Savaşı.jpg",
      kitapTur: "Tarih",
      yazar: "Khaled"),
  KitapModel(
      id: "1",
      kitapIsim: "El Cami Fi Talebil İlmiş Şerif",
      kitapFoto: "assets/EL cami.jpg",
      kitapTur: "Din",
      yazar: "Abdulkadir B. Abdulaziz"),
];
