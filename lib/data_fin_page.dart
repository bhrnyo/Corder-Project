import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:appproject/login_page.dart';

class DataFinPage extends StatefulWidget {
  final User person;
  const DataFinPage({required this.person});

  @override
  State<DataFinPage> createState() => _DataFinPageState();
}

String name = "";

class _DataFinPageState extends State<DataFinPage> {

  void printSharedValue(DataFinPage instance) {
    name = '${instance.person}';
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
