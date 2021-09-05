import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/anasayfa.dart';
import 'package:flutter_native_uyg/atawidget.dart';
import 'package:flutter_native_uyg/iletisim.dart';
import 'package:flutter_native_uyg/kurucuyeler.dart';
import 'package:flutter_native_uyg/parcalar/projeler_kart.dart';
import 'package:flutter_native_uyg/parcalar/ssskart.dart';
import 'package:flutter_native_uyg/urunlerlist.dart';
import 'package:flutter_native_uyg/yardimcilar/islemler.dart';
import 'package:flutter_native_uyg/yazilim_hizmetleri.dart';
import 'package:flutter_native_uyg/yorum_hizmetleri.dart';

void main() =>
    runApp(AtaWidget(
      child: AnaGiris(),
      islem: IslemDetay(),
    ));

class AnaGiris extends StatefulWidget {
  @override
  _AnaGirisState createState() => _AnaGirisState();
}

class _AnaGirisState extends State<AnaGiris> {
  bool _veriVar = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AtaWidget
        .of(context)
        .islem
        .istek()
        .then((deger) {
      _veriVar = deger;
      setState(() {});
    });
  }

  var rotalar = <String, WidgetBuilder>{
    "/anasayfa": (BuildContext context) => AnaSayfa(),
    "/iletisim": (BuildContext context) => Iletisim(),
    "/kurucuyeler": (BuildContext context) => KurucUyeler(),
    "/yazilimhizmet": (BuildContext context) => YazilimHizmetleri(),
    "/yorumhizmet": (BuildContext context) => YorumHizmetleri(),
    "/tumurunler": (BuildContext context) => TumUrunler(),
    "/SSS": (BuildContext context) => SSSYan(),
    "/mevcutprojeler": (BuildContext context) => MevcutProjeler(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Cocon",
        primaryColor: Colors.blue,
        accentColor: Colors.indigo,
      ),
      home: AnaSayfa(), //_veriVar ? AnaSayfa() : Center(child: CircularProgressIndicator(),),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}