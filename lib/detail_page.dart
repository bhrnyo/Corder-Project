import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/main.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 38,
                    ),
                    onPressed: goBack,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: '코린이를 위하여!\n',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Light',
                    height: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'HTML5, 프로그래밍 언어?',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Black',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/html_detail.png'), width: 336,),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'HTML5는 프로그래밍 언어일까요?\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Bold',
                    height: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'HTML5, 신비하고 놀라운 마크업 언어.\n그 언어의 세계에 풍덩 빠질 준비!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(141, 141, 141, 1),
                        fontFamily: 'Regular',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Divider(
                color: Color.fromRGBO(150, 150, 150, 1),
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '결론부터 말하자면......\n\n',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Bold',
                      height: 1.2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'HTML5는 프로그래밍 언어가... 아닙니다! 자칫하면 헷갈릴 수도 있을 텐데요.  HTML (Hypertext Markup Language, 하이퍼텍스트 마크업 언어)는 프로그래밍 언어는 아니고, 우리가 보는 웹페이지가 어떻게 구조화되어 있는지 브라우저로 하여금 알 수 있도록 하는 마크업 언어입니다.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Regular',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 25),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '사람들은 왜 헷갈릴까?\n\n',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Bold',
                      height: 1.2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque gravida vestibulum tincidunt. Nullam rhoncus metus ac risus luctus, suscipit dapibus magna aliquam. Aenean nec nunc convallis, placerat nulla at, euismod tellus. Suspendisse tempor justo sem, eget viverra tellus finibus vitae. Praesent volutpat laoreet malesuada. Vestibulum ut libero quis libero ullamcorper pretium nec in purus. Suspendisse feugiat diam eget libero iaculis, ut congue magna malesuada. Fusce aliquam magna eu massa tempor volutpat. Nam eu augue lorem. Integer venenatis metus sit amet magna porttitor, sed',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Regular',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
