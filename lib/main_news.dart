import 'package:flutter/material.dart';
import 'package:appproject/playlist_page.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
                    children: [
                      Text(
                        '새 소식',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 40, fontFamily: 'Black'),
                      ),
                      Text(
                        '팔로우 하는 섹션의 최신 콘텐츠입니다.',
                        style: TextStyle(fontSize: 13, fontFamily: 'Thin', height: 0.1),
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '신규',
                    style: TextStyle(fontSize: 15, fontFamily: 'bold'),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/html.png',
                        width: 75,
                        height: 75,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2시간 전',
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 11,
                                color: Color.fromRGBO(103, 103, 103, 1)),
                          ),
                          SizedBox(height: 4.0),
                          Text('HTML5, 프로그래밍 언어?',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8)),
                        ],
                      ),
                      subtitle: Text(
                        '코린이를 위한!',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            height: 1.2),
                      ),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.favorite, size: 23, color: Colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.more_horiz, color: Color.fromRGBO(148, 148, 148, 1), size: 23),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      height: 0.2,
                      thickness: 0.5,
                    ),
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
                      leading: Container(
                        width: 75,
                        height: 75,
                        child: Image.asset(
                          'assets/smile.jpg',
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '22시간 전',
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 11,
                                color: Color.fromRGBO(103, 103, 103, 1)),
                          ),
                          SizedBox(height: 4.0),
                          Text('인기 K-POP',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8)),
                        ],
                      ),
                      subtitle: Text(
                        '코딩할 때 듣기 좋은 음악 - 데일리 믹스',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            height: 1.2),
                      ),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.favorite, size: 23, color: Colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.more_horiz, color: Color.fromRGBO(148, 148, 148, 1), size: 23),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      height: 0.2,
                      thickness: 0.5,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/css.png',
                        width: 75,
                        height: 75,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6월 21일',
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 11,
                                color: Color.fromRGBO(103, 103, 103, 1)),
                          ),
                          SizedBox(height: 4.0),
                          Text('CSS3의 강력한 기능들',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8)),
                        ],
                      ),
                      subtitle: Text(
                        '코린이를 위한!',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            height: 1.2),
                      ),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.favorite, size: 23, color: Colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.more_horiz, color: Color.fromRGBO(148, 148, 148, 1), size: 23),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      height: 0.2,
                      thickness: 0.5,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/m1.PNG',
                        width: 75,
                        height: 75,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6월 15일',
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 11,
                                color: Color.fromRGBO(103, 103, 103, 1)),
                          ),
                          SizedBox(height: 4.0),
                          Text('박하영에 대하여',
                              style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: 18,
                                  height: 0.8)),
                        ],
                      ),
                      subtitle: Text(
                        '코린이를 위한!',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            height: 1.2),
                      ),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.favorite, size: 23, color: Colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.more_horiz, color: Color.fromRGBO(148, 148, 148, 1), size: 23),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      height: 0.2,
                      thickness: 0.5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
