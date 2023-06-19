import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appproject/main.dart';

class DataFinPage extends StatelessWidget {
  final String name;

  const DataFinPage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/slide3.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.matrix(<double>[
                  // 밝기를 조절하는 행렬 값 설정
                  0.3, 0, 0, 0, 0,
                  0, 0.3, 0, 0, 0,
                  0, 0, 0.3, 0, 0,
                  0, 0, 0, 1, 0,
                ]),
              ),
            ),
          ),
          Positioned.fill(
            bottom: -50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/m1.PNG'), height: 230),
                SizedBox(height: 20,),
                Text(
                  '네! 반갑습니다, $name님 !',
                  style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Black'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DataFinPageLoader extends StatefulWidget {
  @override
  State<DataFinPageLoader> createState() => _DataFinPageLoaderState();
}

class _DataFinPageLoaderState extends State<DataFinPageLoader> {
  String name = '';

  @override
  void initState() {
    super.initState();
    _loadData();
    _navigateToMainPage();
  }

  Future<void> _loadData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final savedName = sharedPreferences.getString('count');
    setState(() {
      name = savedName ?? '';
    });
  }

  void _navigateToMainPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DataFinPage(name: name);
  }
}
