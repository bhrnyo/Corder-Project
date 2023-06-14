import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiper with Text',
      home: MySwiper(),
    );
  }
}

class MySwiper extends StatelessWidget {
  final List<String> images = [
    'assets/slide1.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
    'assets/slide4.png',
  ];

  final List<String> texts = [
    'Text 1',
    'Text 2',
    'Text 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swiper with Text'),
      ),
      body: Swiper(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                texts[index],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}