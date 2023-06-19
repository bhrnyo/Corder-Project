import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:appproject/data_fin_page.dart';
import 'package:appproject/data_check_N_page.dart';

class DataCheckPage extends StatefulWidget {
  final String language;
  const DataCheckPage({required this.language});

  @override
  State<DataCheckPage> createState() => _DataCheckPageState();
}

class _DataCheckPageState extends State<DataCheckPage> {
  late String languageValue;

  void initState() {
    super.initState();
    languageValue = widget.language; // 변수 초기화
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
                Image(image: AssetImage('assets/m2.PNG'), height: 230),
                SizedBox(height: 20,),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '그렇다면 지금부터,\n',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Black',
                        height: 1),
                    children: <TextSpan>[
                      TextSpan(
                        text: '$languageValue에 대한\n',
                        style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Black'),
                      ),
                      TextSpan(
                        text: '콘텐츠를 자주 보여드릴게요!\n',
                        style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Black'),
                      ),
                      TextSpan(
                        text: '괜찮나요?',
                        style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Black'),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return DataYPage();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    '네, 괜찮아요.',
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
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return DataNPage();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    '다시 고를래요.',
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
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return DataNPage();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    '안 보여주셔도 돼요.',
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
