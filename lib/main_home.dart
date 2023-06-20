import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget? MainHomePage(String name, TextEditingController _textEditingController) {
  SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            width: 340,
            child: TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
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
                    Container(
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
  );
}