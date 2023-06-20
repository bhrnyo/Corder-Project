import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainUserPage extends StatefulWidget {
  const MainUserPage({Key? key}) : super(key: key);

  @override
  State<MainUserPage> createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            children: [
              CircleAvatar(
                child: Image.asset('assets/m2.PNG'),
              ),
              SizedBox(height: 20,),
              Text('Java, Html'),
              Text('name'),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text('프로필 수정하기')),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('팔로잉\n9'),
                  SizedBox(width: 40,),
                  Text('팔로워\n1.3k'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
