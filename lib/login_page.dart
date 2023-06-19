import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:appproject/data_page.dart';
import 'package:appproject/data_fin_page.dart';

class User {
  String name;

  User(this.name);
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String? _errorMessage; // 에러 메시지를 저장할 변수
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '오직 개발자를 위한,\n',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Black',
                    height: 1),
                children: <TextSpan>[
                  TextSpan(
                    text: '오직 CORDER를 위한.',
                    style: TextStyle(fontSize: 30, fontFamily: 'Black'),
                  ),
                  TextSpan(
                    text: '\n\n당신에게 선사하는 ‘편한’ 코딩의 세계\n그 여정을 떠나기 위한 준비',
                    style: TextStyle(
                        fontSize: 17, color: Colors.black, fontFamily: 'Thin'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              width: 350,
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // 원하는 Border Radius 값 설정
                  ),
                  labelText: '이름을 입력하세요',
                ),
                onChanged: (value) {
                  final name = value;
                  bool isEmpty = value.trim().isEmpty;
                  setState(() {
                    if (isEmpty) {
                      _errorMessage = '값을 입력해주세요.';
                    } else {
                      _errorMessage = null;
                    }
                  });
                },
                onSubmitted: (value) {
                  if (_errorMessage == null) {
                    final person = User('$_textEditingController');
                    DataFinPage(person: person,);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstDataPage()));
                  }
                },
              ),
            ),
            if (_errorMessage != null)
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Text(
                      _errorMessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
