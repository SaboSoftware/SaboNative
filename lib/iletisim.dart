import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Iletisim extends StatefulWidget {
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  Completer<GoogleMapController> _haritaHazirlayici =
      Completer<GoogleMapController>();

  Map<MarkerId, Marker> _isaretler = <MarkerId, Marker>{};

  Future linkeGit(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      debugPrint("linki açamıyorum");
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("İletişim"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.5),
              ),
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 300.0,
              width: double.maxFinite,
              child: GoogleMap(
                mapType: MapType.normal,
                markers: Set<Marker>.of(_isaretler.values),
                initialCameraPosition: CameraPosition(
                    target: LatLng(36.9159262, 31.0860767), zoom: 18.0),
                onMapCreated: (GoogleMapController controller) {
                  final MarkerId isaretId = MarkerId("merkez");
                  final Marker isaret = Marker(
                    markerId: isaretId,
                    position: LatLng(36.9159262, 31.0860767),
                    infoWindow: InfoWindow(
                        title: "Sabo Software",
                        snippet: "Türkiye'nin büyüyen yazılım firması.",
                        onTap: () {
                          debugPrint("İşaretleyici tıklandı");
                        }),
                  );
                  setState(() {
                    _isaretler[isaretId] = isaret;
                    _haritaHazirlayici.complete(controller);
                  });
                },
              ),
            ),
            Container(
              height: 100,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Text(
                "Company Adress",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 100,
              child: Center(
                child: InkWell(
                  onTap: () {
                    linkeGit("tel:+905364434096");
                  },
                  child: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Text(
                "0 551 061 0169",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
