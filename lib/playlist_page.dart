import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/main.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dj.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.matrix(<double>[
                  0.3,
                  0,
                  0,
                  0,
                  0,
                  0,
                  0.3,
                  0,
                  0,
                  0,
                  0,
                  0,
                  0.3,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                ]),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 38,
                    ),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration:
                              Duration(milliseconds: 500), // 전환 시간 설정
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MainPage();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  )),
                  Center(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(15, 41, 107, 0.1)
                                .withOpacity(0.13),
                            spreadRadius: 5,
                            blurRadius: 20,
                            offset: Offset(5, 8), // 그림자 위치 조정 (가로, 세로)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        border: null,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(233, 237, 244, 0.21),
                            Color.fromRGBO(255, 255, 255, 0.21)
                          ], // 그라데이션 색상 리스트
                          begin: Alignment.topLeft, // 그라데이션 시작 위치
                          end: Alignment.bottomRight, // 그라데이션 끝 위치
                        ),
                      ),
                      width: 320,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(149, 149, 149, 1),
                          ),
                          border: InputBorder.none,
                          labelText: '검색어를 입력해 주세요',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/smile.jpg'),
                  width: 215,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '코딩할 때 듣기 좋은 음악\n데일리 리믹스',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Bold',
                              color: Colors.white,
                              height: 1),
                        ),
                        Expanded(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '2시간 58분',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Light',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Color.fromRGBO(148, 148, 148, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Color.fromRGBO(148, 148, 148, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    height: 800,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          leading: Container(
                            width: 75,
                            height: 75,
                            child: Image.asset(
                              'assets/smile.jpg',
                            ),
                          ),
                          title:
                              Text('SMILEY(Feat. BIBI)',
                                  style: TextStyle(
                                      fontFamily: 'Regular',
                                      fontSize: 18,
                                      height: 0.8, color: Colors.white)),
                          subtitle: Text(
                            'YENA, 비비',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(137, 137, 137, 1),
                                height: 1.2),
                          ),
                          dense: true,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(5),
                        ),
                        ListTile(
                          leading: Container(
                            width: 75,
                            height: 75,
                            child: Image.asset(
                              'assets/queen.jpg',
                            ),
                          ),
                          title:
                          Text('퀸카 (Queencard)',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8, color: Colors.white)),
                          subtitle: Text(
                            '(여자)아이들',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(137, 137, 137, 1),
                                height: 1.2),
                          ),
                          dense: true,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(5),
                        ),
                        ListTile(
                          leading: Container(
                            width: 75,
                            height: 75,
                            child: Image.asset(
                              'assets/10cm.jpg',
                            ),
                          ),
                          title:
                          Text('방에 모기가 있어 (Do You Think Of Me?)',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8, color: Colors.white)),
                          subtitle: Text(
                            '10cm',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(137, 137, 137, 1),
                                height: 1.2),
                          ),
                          dense: true,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(5),
                        ),
                        ListTile(
                          leading: Container(
                            width: 75,
                            height: 75,
                            child: Image.asset(
                              'assets/idol.jpg',
                            ),
                          ),
                          title:
                          Text('アイドル',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8, color: Colors.white)),
                          subtitle: Text(
                            'YOASOBI',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(137, 137, 137, 1),
                                height: 1.2),
                          ),
                          dense: true,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(5),
                        ),
                        ListTile(
                          leading: Container(
                            width: 75,
                            height: 75,
                            child: Image.asset(
                              'assets/metto.jpg',
                            ),
                          ),
                          title:
                          Text('Me Too',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8, color: Colors.white)),
                          subtitle: Text(
                            'Meghan Trainor',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(137, 137, 137, 1),
                                height: 1.2),
                          ),
                          dense: true,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
