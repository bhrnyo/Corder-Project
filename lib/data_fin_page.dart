import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/main.dart';

class DataFinPage extends StatefulWidget {

  @override
  State<DataFinPage> createState() => _DataFinPageState();
}

class _DataFinPageState extends State<DataFinPage> {

  late String name;

  void initState() {
    super.initState();
    _loadData();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    });
  }

  void _loadData() async {
    var key = 'name';
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString(key) ?? ""; // null일 경우 빈 문자열로 초기화
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/slide3.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.matrix(<double>[
                  // 밝기를 조절하는 행렬 값 설정
                  0.3, 0, 0, 0, 0,
                  0, 0.3, 0, 0, 0,
                  0, 0, 0.3, 0, 0,
                  0, 0, 0, 1, 0,
                ]),
              )),
        ),
        Stack(children: [
          Positioned.fill(
            bottom: -50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/m1.PNG'), height: 230),
                SizedBox(height: 20,),
                Text('네! 반갑습니다, $name님 !', style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Black',),),
              ],
            ),
          )
        ]),
      ]),
    );
  }
}
