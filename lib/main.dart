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
              height: 40,
            ),
            Text('인기 콘텐츠', style: TextStyle(fontSize: 24, fontFamily: 'Black'), textAlign: TextAlign.left,),
            // Column(
            //   children: [
            //     ListView(
            //       scrollDirection: Axis.vertical,
            //       children: [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text('Home'),
            //           trailing: Icon(Icons.navigate_next),
            //           onTap: () {},
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.event),
            //           title: Text('Event'),
            //           trailing: Icon(Icons.navigate_next),
            //           onTap: () {},
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.camera),
            //           title: Text('Camera'),
            //           trailing: Icon(Icons.navigate_next),
            //           onTap: () {},
            //
            //         )
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
