import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:appproject/data_Y_page.dart';
import 'package:appproject/data_N_page.dart';

class FirstDataPage extends StatefulWidget {
  const FirstDataPage({Key? key}) : super(key: key);

  @override
  State<FirstDataPage> createState() => _FirstDataPageState();
}

class _FirstDataPageState extends State<FirstDataPage> {
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
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '현재 사용중인\n',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Black',
                        height: 1),
                    children: <TextSpan>[
                      TextSpan(
                        text: '프로그래밍 언어가 있나요?',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Black'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DataYPage()));
                  },
                  child: Text(
                    '네, 있습니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Regular', fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(40, 74, 222, 1),
                    minimumSize: Size(239, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // 원하는 radius 값 설정
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DataNPage()));
                  },
                  child: Text(
                    '아니요, 없습니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Regular', fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(168, 168, 168, 0.6),
                    minimumSize: Size(239, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10.0), // 원하는 radius 값 설정
                    ),
                  ),
                )
              ],
            ),
          )
        ])
      ]),
    );
  }
}
