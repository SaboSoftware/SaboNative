import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blueGrey.shade50,
              child: Image.asset('assets/sabologo.png'),
              padding: EdgeInsets.only(left: 60.0, right: 60.0),
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("AnaSayfa"),
                  onTap: () {
                    Navigator.pop(context);
                    urlAc("https://sabosoftware.com");
                  },
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ExpansionTile(
                  leading: Icon(Icons.business),
                  title: Text("Kurumsal"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.account_box),
                        title: Text("Hakkımızda"),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.people),
                        title: Text("Ekibimiz"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/kurucuyeler");
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.bookmark_rounded),
                        title: Text("S.S.S"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/SSS");
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text("Ürünler"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/tumurunler");
                  },
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ExpansionTile(
                  leading: Icon(Icons.home_repair_service_sharp),
                  title: Text("Hizmetler"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.code),
                        title: Text("Yazılım Hizmeti"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/yazilimhizmet");
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.comment),
                        title: Text("Yorum Hizmeti"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/yorumhizmet");
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ExpansionTile(
                  leading: Icon(Icons.pages),
                  title: Text("Projelerimiz"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.construction),
                        title: Text("Devam Eden Projeler"),
                        onTap: () {
                          Navigator.pop(context);

                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.grade),
                        title: Text("Bitmiş Projeler"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/mevcutprojeler");
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ListTile(
                  leading: Icon(Icons.photo_library_outlined),
                  title: Text("Galeri"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("İletişim"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/iletisim");
                  },
                ),
                Divider(
                  height: 1.0,
                  color: Colors.blueGrey,
                ),
              ],
            ))
          ],
        ),
      ),
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
