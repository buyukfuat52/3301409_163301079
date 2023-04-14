
import 'package:vize_e_kutuphane/models/kitap_model.dart';

void aramaNesne(List disaridanDizi, List kendiDizim, String arama) {
  kendiDizim.clear();
  for (var element in disaridanDizi) {
    if (arama.isEmpty) {
      break;
    }
    if (element is KitapModel
        ? element.kitapIsim.toLowerCase().contains(arama.toLowerCase())
        : element.isimSoyisim.toLowerCase().contains(arama.toLowerCase())) {
      kendiDizim.add(element);
    }
  }
}
