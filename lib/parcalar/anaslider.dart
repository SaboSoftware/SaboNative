import 'package:flutter/material.dart';
import 'package:flutter_native_uyg/anasayfa.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

List<String> SliderMenu = [
  "https://sabosoftware.com/upload/Original/Urunler/285bf240ede0be3ae79f74fb4f748ba0.png",
  "https://sabosoftware.com/upload/Original/Urunler/4a6cf178804d459d671a79d4a3c92e97.png",
];

List<String> SliderLink = [
  "https://sabosoftware.com",
  "https://sabosoftware.com",
];

List<String> SliderText = [
  "Mobil Uygulamalamanız ile Üstlere Çıkın",
  "En iyi Sosyal Medya Paneli Yazılımı",
  "",
];

class AnaSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      layout: SwiperLayout.STACK,
      itemCount: SliderMenu.length,
        itemWidth: 380.0,
      itemBuilder: (BuildContext context, int pozisyon) {
        return GestureDetector(
          onTap: () {
            urlAc(SliderLink[pozisyon]);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(SliderMenu[pozisyon]),
            )),
            child: Container(
              width: double.maxFinite,
              color: Color(
                  SliderText[pozisyon].length > 1 ? 0xFF000000 : 0x00000000),
              padding: EdgeInsets.all(6),
              child: Text(
                SliderText[pozisyon],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
      indicatorLayout: PageIndicatorLayout.COLOR,
      autoplay: true,
      autoplayDisableOnInteraction: true,
      pagination: new SwiperPagination(
          builder: DotSwiperPaginationBuilder(
        space: 4.0,
        activeColor: Colors.blue,
        color: Colors.grey,
      )),
    );
  }
}
