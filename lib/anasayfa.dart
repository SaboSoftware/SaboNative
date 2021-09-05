import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/atawidget.dart';
import 'package:flutter_native_uyg/parcalar/anaslider.dart';
import 'package:flutter_native_uyg/parcalar/hizmetler_kart.dart';
import 'package:flutter_native_uyg/parcalar/projeler_kart.dart';
import 'package:flutter_native_uyg/parcalar/slogan.dart';
import 'package:flutter_native_uyg/parcalar/ssskart.dart';
import 'package:flutter_native_uyg/parcalar/urunler_kart.dart';
import 'package:flutter_native_uyg/urunlerlist.dart';
import 'package:flutter_native_uyg/yanmenu.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';


class AnaSayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<AnaSayfa> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  bool _veri = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Sabo Software",
          style: TextStyle(fontWeight: FontWeight.w900, ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              urlAc(Platform.isAndroid
                  ? "market://details?id=com.sabosoftware.app"
                  : "https://apps.apple.com/tr/app/apple-store/id375380948");
            },
            icon: Icon(Icons.star),
            tooltip: "Puan Ver",
          ),
          IconButton(
            onPressed: () {
              Share.share("Sabo Software Mobil Uygulamamızı indirdiniz mi ?");
            },
            icon: Icon(Icons.share),
            tooltip: "paylaş",
          ),
        ],
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage('assets/bluebackground.jpg'),
          )
        ),
        padding: EdgeInsets.only(top: 13.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.0,
                width: double.maxFinite,
                child: AnaSlider(),
              ),
              Slogan(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 150),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.grey.shade600,
                    ),
                    Text(
                      "Ürünler",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.blueGrey,
                endIndent: 25,
                indent: 25,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  UrunlerList(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150),
                    child: Row(
                      children: [
                        Icon(
                          Icons.business_center_sharp,
                          color: Colors.grey.shade600,
                        ),
                        Text(
                          "Hizmetler",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                    endIndent: 25,
                    indent: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HizmetlerKart(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150),
                    child: Row(
                      children: [
                        Icon(
                          Icons.domain,
                          color: Colors.grey.shade600,
                        ),
                        Text(
                          "Projeler",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                    endIndent: 25,
                    indent: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProjelerKart(),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                    endIndent: 25,
                    indent: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 70),
                    child: Row(
                      children: [
                        Icon(
                          Icons.question_answer_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sıkça Sorulan Sorular",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SSSKart(),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: YanMenu(),
    );
  }
}

Future urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint("linki açamıyorum");
  }
}
