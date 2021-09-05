import 'package:flutter/material.dart';

class SSSKart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
          child: ExpansionTile(
            title: Text(
              "Ücretsiz kurulum yapıyor musunuz?",
              style: TextStyle(fontSize: 20),
            ),
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Elbette yapıyoruz. Bunun için tek yapmanız gereken, destek sistemimiz üzerinden host bilgileriniz ile birlikte kurulum talebi iletmenizdir.",
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ExpansionTile(
            title: Text(
              "İstediğim kadar domaine kurabilir miyim?",
              style: TextStyle(fontSize: 20),
            ),
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Scriptlerimiz domaine lisanslı verilmektedir, her bir domain için yeniden ürünü satın almanız gerekmektedir. Sipariş verilen script, siparişte belirtilen domaine lisanslanır. Script kurulumu tamamlandıktan sonra, domain değişikliği yapılmamaktadır.",
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ExpansionTile(
            title: Text(
              "Kendi hostumda barındırabilir miyim?",
              style: TextStyle(fontSize: 20),
            ),
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Evet barındırabilirsiniz. Ancak, sunucunuzda 'Güncel IonCube' bileşeninin kurulu olması gereklidir. Ayrıca yazılımlarımız en düşük PHP 5.5 sürümü ile çalışmaktadır. Tüm özelliklere sahip, full performans ve profesyonel hosting paketlerimizden birini seçerek de hizmet alabilirsiniz.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ExpansionTile(
            title: Text(
              "Geri iade imkânım var mı?",
              style: TextStyle(fontSize: 20),
            ),
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Malesef. Yazılımlarımız domaine lisanslı ve dosya teslimi şeklinde olduğundan iade söz konusu olmamaktadır. Bu nedenle demo sunumlarımızı detaylı olarak inceleyiniz.",
                  style: TextStyle(fontSize: 17),
                ),
              ),

            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ExpansionTile(
            title: Text(
              "Web sitem Google'da çıkar mı?",
              style: TextStyle(fontSize: 20),
            ),
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Elbette. Tüm yazılımlarımız %100 Google uyumlu ve tüm SEO donanımlarına sahip olduğundan kısa süre içerisinde siteniz Google'da yer almaktadır. Müşterilerimizin en çok övgü ile bahsettiği özelliklerinden biri de SEO daki gücüdür.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SSSYan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sıkça Sorulan Sorular"),
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
          child: Center(child: SSSKart())),
    );
  }
}
