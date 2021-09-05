import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/parcalar/urunler_kart.dart';

class UrunlerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 650,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: uimage.length,
          itemBuilder: (BuildContext context, int pozisyon) {
            return UrunlerKart(
              ubaslik: ubaslik[pozisyon],
              uimage: uimage[pozisyon],
              ufiyat: ufiyat[pozisyon],
              urlu: urlu[pozisyon],
            );
          }),
    );
  }
}

class TumUrunler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürünler"),
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
        padding: EdgeInsets.only(top: 15),
        child: ListView.builder(
            itemCount: uimage.length,
            itemBuilder: (BuildContext context, int pozisyon) {
              return UrunlerKart(
                ubaslik: ubaslik[pozisyon],
                uimage: uimage[pozisyon],
                ufiyat: ufiyat[pozisyon],
                urlu: urlu[pozisyon],
              );
            }),
      ),
    );
  }
}
