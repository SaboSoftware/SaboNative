import 'package:flutter/material.dart';


class KurucuKart extends StatelessWidget {
  final String kurucu, kuruculink, rank;


  const KurucuKart({Key key, this.kurucu, this.kuruculink, this.rank}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.blue,
      child: Container(
        height: 120.0,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(1.0, 15.0, 1.0, 1.0)),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(kuruculink),
                maxRadius: 27,
              ),
            ),
            Text(
              kurucu,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(rank),
          ],
        ),
      ),
    );
  }
}
