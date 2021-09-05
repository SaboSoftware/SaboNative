import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/yardimcilar/islemler.dart';

class AtaWidget extends InheritedWidget {
  final Islemler islem;


  AtaWidget({
    Key key,
    @required Widget child,
    this.islem,
  }) : super(key: key, child: child);

  static AtaWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: AtaWidget);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
