import 'dart:ui';

import 'package:flutter/material.dart';
import '../anasayfa.dart';

class ProjelerKart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 370,
            height: 250,
            child: Card(
              child: FlatButton(
                onPressed: () {
                  urlAc(
                      "https://sabosoftware.com/proje/gorevcim.com");
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://sabosoftware.com/upload/Original/Projeler/0bfc04b0252f2d923e392ca797bd2b6a.png"),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 160,
                          ),
                          Container(
                            width: 160,
                            height: 30,
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.blueAccent,
                              child: Text("GOREVCİM.COM"),
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        ],
                      ),
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

class MevcutProjeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Bitmiş Projeler"),
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
          child: Center(child: ProjelerKart())),
    );
  }
}

