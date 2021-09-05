import 'dart:ui';

import 'package:flutter/material.dart';
import '../anasayfa.dart';

class HizmetlerKart extends StatelessWidget {
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
                      "https://sabosoftware.com/hizmet/yazilim");
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
                              "https://sabosoftware.com/upload/Original/Hizmetler/9cd82478f2bce9eedd2a87bf585f9ff7.jpeg"),
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
                              child: Text("YAZILIM HİZMETİ"),
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
