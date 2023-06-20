import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '인기 콘텐츠',
                  style: TextStyle(fontSize: 24, fontFamily: 'Black'),
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '코딩할 때 듣기 좋은 음악\n데일리 믹스',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: 'Medium', height: 1),
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '인기 API',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Medium',
                                    height: 1,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '사용자1님을 위한\n도움되는 사이트',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: 'Medium', height: 1),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      child: Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '코딩할 때 듣기 좋은 음악\n데일리 믹스',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: 'Medium', height: 1),
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '인기 API',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Medium',
                                    height: 1,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/slide1.jpg',
                                  width: 54,
                                  height: 58,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  '사용자1님을 위한\n도움되는 사이트',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: 'Medium', height: 1),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                Text(
                  '인기 콘텐츠',
                  style: TextStyle(fontSize: 24, fontFamily: 'Black'),
                  textAlign: TextAlign.left,
                ),
                Container(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          leading: Image.asset('assets/slide1.png'),
                          title: Text('코딩할 때 듣기 좋은 음악\n데일리 믹스'),
                        ),
                        ListTile(
                          leading: Image.asset('assets/slide1.png'),
                          title: Text('코딩할 때 듣기 좋은 음악\n데일리 믹스'),
                        ),
                        ListTile(
                          leading: Image.asset('assets/slide1.png'),
                          title: Text('코딩할 때 듣기 좋은 음악\n데일리 믹스'),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
