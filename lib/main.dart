import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/main_like.dart';
import 'package:appproject/main_news.dart';
import 'package:appproject/main_user_page.dart';
import 'package:appproject/playlist_page.dart';
import 'package:appproject/detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _textEditingController = TextEditingController();
  late String name;

  void initState() {
    super.initState();
    _loadData();
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(15, 41, 107, 1).withOpacity(0.13),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: Offset(5, 8), // 그림자 위치 조정 (가로, 세로)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      border: null,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(233, 237, 244, 1),
                          Color.fromRGBO(255, 255, 255, 0.21)
                        ], // 그라데이션 색상 리스트
                        begin: Alignment.topLeft, // 그라데이션 시작 위치
                        end: Alignment.bottomRight, // 그라데이션 끝 위치
                      ),
                    ),
                    width: 340,
                    child: TextField(
                      controller: _textEditingController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        labelText: '검색어를 입력해 주세요',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '데일리 콘텐츠',
                        style: TextStyle(fontSize: 24, fontFamily: 'Black'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  ListTile(
                                    onTap: () async {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            return PlayListPage();
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
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/smile.jpg',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '코딩할 때 듣기 좋은 음악\n데일리 믹스',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'Medium',
                                          height: 1),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/api.png',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '인기 API',
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontFamily: 'Medium',
                                        height: 1,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/be.jpg',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '인기 회사',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'Medium',
                                          height: 1),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/site.jpg',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '$name님을 위한\n도움되는 사이트',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'Medium',
                                          height: 1),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/C++.png',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '인기 프로그래밍 언어',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Medium',
                                        height: 1,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/content.jpg',
                                        width: 54,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      '좋아하는 콘텐츠',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'Medium',
                                          height: 1),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    tileColor: Color.fromRGBO(230, 230, 230, 1),
                                    dense: true,
                                    horizontalTitleGap: 10,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '인기 콘텐츠',
                        style: TextStyle(fontSize: 24, fontFamily: 'Black'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                        height: 200,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/html.png',
                                      width: 140,
                                      height: 140,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('HTML5,\n프로그래밍 언어?')
                                  ],
                                ),
                                width: 160.0,
                              ),
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return DetailPage();
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
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/api.png',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('인기 API')
                                ],
                              ),
                              width: 160.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/lang.png',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('인기 프로그래밍 언어')
                                ],
                              ),
                              width: 160.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/be.jpg',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('인기 회사')
                                ],
                              ),
                              width: 160.0,
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '$name님을 위한 콘텐츠',
                        style: TextStyle(fontSize: 24, fontFamily: 'Black'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                        height: 200,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/css.png',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('CSS3,\n강력한 기능들')
                                ],
                              ),
                              width: 160.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/aespa.jpg',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('인기 K-POP')
                                ],
                              ),
                              width: 160.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/m1.PNG',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('박하영에 대하여')
                                ],
                              ),
                              width: 160.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/content.jpg',
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('인기 회사')
                                ],
                              ),
                              width: 160.0,
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
          MainLikePage(),
          MainNewsPage(),
          MainUserPage(),
        ]),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home, color: Colors.black87, size: 23,),
            ),
            Tab(
              icon: Icon(Icons.favorite, color: Colors.black87, size: 23),
            ),
            Tab(
              icon: Icon(Icons.notifications, color: Colors.black87, size: 23),
            ),
            Tab(
              icon: Icon(Icons.person, color: Colors.black87, size: 23),
            ),
          ],
        ),
      ),
    );
  }
}
