import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.supervisor_account), // 앞에 아이콘이 생성됨
                border: OutlineInputBorder(),
                labelText: '아이디를 입력하세요',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
