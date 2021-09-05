import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/anasayfa.dart';
import 'anaslider.dart';

List<String> uimage = [
  "https://sabosoftware.com/upload/Original/Urunler/285bf240ede0be3ae79f74fb4f748ba0.png",
  "https://sabosoftware.com/upload/Original/Urunler/4a6cf178804d459d671a79d4a3c92e97.png",
];

List<String> ubaslik = [
  "ANDROİD WEBVEİW UYGULAMA\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHİZMETİ",
  "SABOSMM TAM OTOMATİK SOSYAL\n\t\t\t\t\t\t\t\t\tMEDYA PANELİ YAZILIMI",
];

List<String> ufiyat = [
  "100TL",
  "200TL",
];

List<String> urlu = [
  "https://sabosoftware.com/urun/android-webveiw-uygulama-hizmeti",
  "https://sabosoftware.com/urun/sabosmm-tam-otomatik-sosyal-medya-paneli-yazilimi",
];

class UrunlerKart extends StatelessWidget {
  final String urlu, ubaslik, ufiyat, uimage;

  const UrunlerKart(
      {Key key, this.urlu, this.ubaslik, this.ufiyat, this.uimage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 370,
            height: 325,
            child: Card(
              child: FlatButton(
                onPressed: () {
                  urlAc(urlu);
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        ubaslik,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ufiyat,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      uimage,
                      width: 325,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
