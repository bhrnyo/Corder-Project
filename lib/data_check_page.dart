import 'package:flutter/material.dart';
import 'package:appproject/data_fin_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/data_check_N_page.dart';

class DataCheckPage extends StatefulWidget {
  final String language;
  const DataCheckPage({required this.language});

  @override
  State<DataCheckPage> createState() => _DataCheckPageState();
}

class _DataCheckPageState extends State<DataCheckPage> {
  String languageValue = ""; // 변수 초기화

  @override
  void initState() {
    super.initState();
    languageValue = widget.language; // 변수 초기화
  }

  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }


  void _setData() async {
    var key = 'language';
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(key, languageValue);
  }


  Widget _buildElevatedButton({
    required String text,
    required Color backgroundColor,
    required Widget page,
    required bool pass,
  }) {
    return ElevatedButton(
      onPressed: () {
        if(pass == true) {
          _setData();
        }
        _navigateToPage(page);
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Regular', fontSize: 17),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(239, 54),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/slide3.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.matrix(<double>[
                    0.3, 0, 0, 0, 0,
                    0, 0.3, 0, 0, 0,
                    0, 0, 0.3, 0, 0,
                    0, 0, 0, 1, 0,
                  ]),
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/m2.PNG'), height: 230, alignment: Alignment.center,),
                  SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '그렇다면 지금부터,\n',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'Black',
                        height: 1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '$languageValue에 대한\n',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'Black',
                          ),
                        ),
                        TextSpan(
                          text: '콘텐츠를 자주 보여드릴게요!\n',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'Black',
                          ),
                        ),
                        TextSpan(
                          text: '괜찮나요?',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'Black',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  _buildElevatedButton(
                    text: '네, 괜찮아요.',
                    backgroundColor: Color.fromRGBO(40, 74, 222, 1),
                    page: DataFinPage(),
                    pass : true,

                  ),
                  SizedBox(height: 20),
                  _buildElevatedButton(
                    text: '다시 고를래요.',
                    backgroundColor: Color.fromRGBO(168, 168, 168, 0.6),
                    page: DataCheckNPage(),
                    pass : false,
                  ),
                  SizedBox(height: 20),
                  _buildElevatedButton(
                    text: '안 보여주셔도 돼요.',
                    backgroundColor: Color.fromRGBO(168, 168, 168, 0.6),
                    page: DataFinPage(),
                    pass : true,
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
