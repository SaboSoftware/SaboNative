import 'package:url_launcher/url_launcher.dart';

Future urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    print("linki açamıyorum");
  }
}