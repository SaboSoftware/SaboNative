import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';


class YorumHizmetleri extends StatefulWidget {
  @override
  _YorumHizmetleriState createState() => _YorumHizmetleriState();
}

class _YorumHizmetleriState extends State<YorumHizmetleri> {

  String _htmlVeri = "";

  @override
  void initState() {
    super.initState();
    _istek();
  }

  var link = Uri.parse("https://sabosoftware.com/yorumhizmetleri");

  Future _istek() async {
    _htmlVeri = "";
    setState(() {});
    await http.get(link).then((gelenVeri) {
      _htmlVeri = gelenVeri.body
          .replaceAll("\n", "")
          .replaceAll("\t", "")
          .replaceAll("  ", "");

      RegExp arama = new RegExp(
          '<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlVeri);
      _htmlVeri = eslesen.group(1);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Yorum Hizmetleri"),
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
        child: _htmlVeri.length > 0
            ? SingleChildScrollView(
          child: Html(
            data: _htmlVeri,
          ),
        )
            : CircularProgressIndicator(),
      ),
    );
  }
}
