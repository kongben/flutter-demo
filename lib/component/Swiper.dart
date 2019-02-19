import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  SwiperPageState createState() {
    return SwiperPageState();
  }
}

class SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 3,
          pagination: new SwiperPagination(
              alignment: Alignment.bottomRight,
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index个'),
        )
        );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      "https://image.zymkcdn.com/file/news/000/003/070.jpg",
      fit: BoxFit.fill,
    ));
  }
}
