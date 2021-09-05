import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/yardimcilar/kurucukart.dart';

List<String> kurucular = [
  "İbrahim TUNÇ",
  "Abdullah Kemal EROL",
  "Hüseyin ABLAY",

];

List<String> kuruculink = [
  "https://pbs.twimg.com/profile_images/1367074306405126144/jIvTzi5a_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1005608614856396800/HeQqJCoC.jpg",
  "https://media-exp1.licdn.com/dms/image/C4E03AQE0W8xn4ZMx9g/profile-displayphoto-shrink_200_200/0/1622812710571?e=1630540800&v=beta&t=y10INThq35Vfb3bdFq9FqrV_sF3jiMr5wjGk-rM0-UA",

];

List<String> rank = [
  "Co-Founder",
  "Co-Founder",
  "Developer",

];

class KurucUyeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ekibimiz"),
        centerTitle: true,
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
        child: Padding(
          padding: EdgeInsets.all(33.0),
          child: ListView.builder(
              itemCount: kurucular.length,
              itemBuilder: (BuildContext context, int pozisyon) {
                return KurucuKart(
                  kurucu: kurucular[pozisyon],
                  kuruculink: kuruculink[pozisyon],
                  rank: rank[pozisyon],
                );
              }),
        ),
      ),
    );
  }
}
