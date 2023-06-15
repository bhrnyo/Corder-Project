import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final imageList = [
    'assets/slide1.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
    'assets/slide4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(children: [
        Swiper(
          pagination: SwiperPagination(alignment: Alignment.bottomCenter),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(imageList[index]),
                fit: BoxFit.cover,
                    colorFilter: ColorFilter.matrix(<double>[
                      // 밝기를 조절하는 행렬 값 설정
                      0.3, 0, 0, 0, 0,
                      0, 0.3, 0, 0, 0,
                      0, 0, 0.3, 0, 0,
                      0, 0, 0, 1, 0,
                    ]),
              )),
            );
          },
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
                    text: '오직 개발자를 위한,\n',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'Black',
                        height: 1),
                    children: <TextSpan>[
                      TextSpan(
                        text: '오직 CORDER를 위한.',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontFamily: 'Black'),
                      ),
                      TextSpan(
                        text: '\n\n당신에게 선사하는 ‘편한’ 코딩의 세계\n그 여정을 떠나기 위한 준비',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Thin'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    '지금 바로 확인',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Regular', fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(40, 74, 222, 1),
                      minimumSize: Size(152, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // 원하는 radius 값 설정
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
