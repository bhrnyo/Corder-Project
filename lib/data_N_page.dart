import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:appproject/data_check_page.dart';

class DataNPage extends StatefulWidget {

  @override
  State<DataNPage> createState() => _DataNPageState();
}

class _DataNPageState extends State<DataNPage> {
  static const List<String> _valueList = [
    'ABAP', 'Arduino', 'Bash', 'BASIC', 'C', 'Clojure', 'CoffeeScript', 'C++', 'C#', 'CSS',
    'Dart', 'Diff', 'Docker', 'Elixir', 'Erlang', 'Flow', 'Fortran', 'F#', 'Gherkin', 'GLSL',
    'Go', 'GraphQL', 'Groovy', 'Haskell', 'HTML', 'Java', 'JavaScript', 'JSON', 'Julia',
    'Kotlin', 'LateX', 'Less', 'Lisp', 'LiveScript', 'Lua', 'Makefile', 'Markdown', 'Markup',
    'MATLAB', 'Mermaid', 'Nix', 'Objective-C', 'OCaml', 'Pascal', 'Perl', 'PHP', 'Plain Text',
    'PowerShell', 'Prolog', 'Protobuf', 'Python', 'R', 'Reason', 'Ruby', 'Rust', 'Sass', 'Scala',
    'Scheme', 'Scss', 'Shell', 'SQL', 'Swift', 'TypeScript', 'VB.Net', 'Verilog', 'VHDL',
    'Visual Basic', 'WebAssembly', 'XML', 'YAML'
  ];

  bool? _selected = false;

  String _selectedValue = 'ABAP';

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
                Image(image: AssetImage('assets/m3.PNG'), height: 100),
                SizedBox(height: 20,),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '무슨 언어를\n',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Black',
                      height: 1,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '사용하고 싶으신가요?',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Black',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: 200,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, // 배경색 설정
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: _selectedValue,
                    items: _valueList.map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                        _selected = true;
                      });
                    },
                  ),
                ),
                SizedBox(height: 120,),
                if(_selected == true)
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500), // 전환 시간 설정
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return DataCheckPage(language : _selectedValue);
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
                    child: Text(
                      '확인',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Regular', fontSize: 17),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(40, 74, 222, 1),
                      minimumSize: Size(239, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10.0), // 원하는 radius 값 설정
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
