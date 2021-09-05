import 'package:flutter_native_uyg/yardimcilar/modeller.dart';
import 'package:http/http.dart' as http;

abstract class Islemler {
  List<SlaytModeli> slaytlar;

  Future<bool> istek();

  String veriler;

  List<UrunlerKart> kartlar;
}

class IslemDetay implements Islemler {
  var link = Uri.parse("https://sabosoftware.com");

  @override
  List<SlaytModeli> slaytlar = List();

  @override
  String veriler;

  @override
  List<UrunlerKart> kartlar = List();

  @override
  Future<bool> istek() async {
    await http.get(link).then((gelenVeri) {
      veriler = gelenVeri.body
          .replaceAll("\n", "")
          .replaceAll("\t", "")
          .replaceAll("  ", "");
      RegExp slaytlaribul = new RegExp('<rs-module-wrap(.*?)</rs-module-wrap>()');
      Match eslesen = slaytlaribul.firstMatch(veriler);
      String slaytlarhtml = eslesen.group(1);

      RegExp kartdeseni = new RegExp('<div class="container">(.*?)<br>Ürünü<br>İncele</b></a>');
      Match eslesenkartlar = kartdeseni.firstMatch(veriler);
      print(eslesenkartlar.group(1));
    });
    return true;
  }
}
