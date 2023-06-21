import 'package:flutter/material.dart';
import 'package:appproject/playlist_page.dart';

class MainLikePage extends StatefulWidget {
  const MainLikePage({Key? key}) : super(key: key);

  @override
  State<MainLikePage> createState() => _MainLikePageState();
}

class _MainLikePageState extends State<MainLikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Expanded(
                  child: Text(
                    'LIKE',
                    style: TextStyle(fontSize: 40, fontFamily: 'Black'),
                  ),
                ),
                Icon(Icons.search),
                SizedBox(width: 30,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.sort),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('최신순', style: TextStyle(fontSize: 15, fontFamily: 'Regular'),),
                )
              ],
            ),
            Expanded(
              child: Container(
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Image.asset('assets/html.png', width: 75, height: 75,),
                      title: Text('HTML, 프로그래밍 언어?', style: TextStyle(fontSize: 18)),
                      subtitle: Text('코린이를 위한!', style: TextStyle(fontSize: 10),),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(0),
                    ),
                    ListTile(
                      leading: Image.asset('assets/smile.jpg', width: 75, height: 75,),
                      title: Text('인기 K-POP', style: TextStyle(fontSize: 18)),
                      subtitle: Text('코딩할 때 듣기 좋은 음악 - 데일리 믹스', style: TextStyle(fontSize: 10),),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(0),
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
                    ),
                    ListTile(
                      leading: Image.asset('assets/m3.PNG', width: 75, height: 75,),
                      title: Text('박하영에 대하여', style: TextStyle(fontSize: 18)),
                      subtitle: Text('코린이를 위한!', style: TextStyle(fontSize: 10),),
                      dense: true,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(0),
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
