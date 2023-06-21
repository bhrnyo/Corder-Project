import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainUserPage extends StatefulWidget {
  const MainUserPage({Key? key}) : super(key: key);

  @override
  State<MainUserPage> createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {
  String name = "";
  String language = "";

  void initState() {
    super.initState();
    _loadData();
    _loadLangData();
  }

  void _loadData() async {
    var key = 'name';
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString(key) ?? ""; // null일 경우 빈 문자열로 초기화
    });
  }

  void _loadLangData() async {
    var key = 'language';
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      language = pref.getString(key) ?? ""; // null일 경우 빈 문자열로 초기화
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(13, 28, 91, 1),
          ),
          Center(
            child: Card(
              color: Colors.white.withOpacity(0),
              elevation: 0, // 그림자 깊이
              shadowColor: Colors.grey, // 그림자 색상
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
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
                height: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 177,
                      height: 177,
                      child: CircleAvatar(
                        child: Image.asset(
                          'assets/m2.PNG',
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('$language'),
                    Text(
                      '$name',
                      style: TextStyle(fontSize: 20, fontFamily: 'Black'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('프로필 수정하기', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 10, fontFamily: 'Regular',),),
                      style: ElevatedButton.styleFrom(
                        elevation: 0, // 그림자 제거
                        primary: Colors.transparent, // 배경색 제거
                        minimumSize: Size(115, 27),
                        backgroundColor: Colors.white.withOpacity(0),
                        side: BorderSide(
                            width: 1.0, color: Colors.white), // 테두리 선 스타일 설정
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '팔로잉\n9',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text('팔로워\n1.3k'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
