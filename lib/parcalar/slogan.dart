import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.maxFinite,
        color: Color.fromRGBO(143, 201, 58, 1),
        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("Sabo Software ile Hayalleriniz Gerçek Olsun.", style: TextStyle(color: Colors.white, fontSize: 15), ),
          ],
        ),
      ),
    );
  }
}
