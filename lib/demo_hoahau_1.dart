import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'sub1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp Chrome',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HOA HẬU VIỆT NAM 2022'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.teal],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffFFC0CB), Colors.white],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 128),
                child: CircleAvatar(
                  backgroundImage: AssetImage('/use/phuonganh256.jpg'),
                  radius: 128,
                ),
              ),
              SizedBox(),
              Padding(
                padding: EdgeInsets.only(top: 250),
                child: OutlinedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'TIẾP TỤC',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    shadowColor: Colors.purple,
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.lightGreen,
                  ),
                  onPressed: () {
                    debugPrint('anh vao di em cho');
                  },
                ),
              ),
              OutlineGradientButton(
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.yellow, Colors.teal])),
                  child: Text(
                    '  TIẾP TỤC  ',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                strokeWidth: 2,
                backgroundColor: Colors.lightGreen,
                radius: Radius.circular(20),
                gradient: LinearGradient(colors: [Colors.teal, Colors.yellow]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
