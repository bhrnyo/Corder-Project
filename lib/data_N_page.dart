import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class DataNPage extends StatefulWidget {
  const DataNPage({Key? key}) : super(key: key);

  @override
  State<DataNPage> createState() => _DataNPageState();
}

class _DataNPageState extends State<DataNPage> {
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
                Image(image: AssetImage('assets/m3.PNG'), height: 100),
                SizedBox(height: 20,),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '무슨 언어를\n',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Black',
                        height: 1),
                    children: <TextSpan>[
                      TextSpan(
                        text: '사용하고 싶으시나요?',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Black'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ])
      ]),
    );
  }
}
