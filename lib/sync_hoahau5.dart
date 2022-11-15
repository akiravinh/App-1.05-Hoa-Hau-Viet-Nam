import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        body: Page1(),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;
    var style1 = TextStyle(
        fontSize: 38,
        color: Color(0xff707070),
        fontFamily: 'Candara',
        fontWeight: FontWeight.bold);
    var style2 = TextStyle(
        fontSize: 42,
        color: Color(0xff707070),
        fontFamily: 'Candara',
        fontWeight: FontWeight.bold);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffF3F684), Color(0xff1EDCF2)],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Column(
        children: [
          SizedBox(
            height: 156,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('./assets/use/phuonganh256.jpg'),
            radius: 128,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'CHUNG KẾT',
            style: style1,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'HOA HẬU VIỆT NAM 2022',
            style: style1,
          ),
          SizedBox(
            height: 150,
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint(width_screen.toString());
              debugPrint(height_screen.toString());
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Page2(),
                  transitionDuration: const Duration(milliseconds: 300),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 15, bottom: 5, left: 30, right: 5),
              child: SizedBox(
                height: 50,
                width: 230,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TIẾP TỤC ',
                      style: style2,
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff707070),
                      size: 55,
                    ),
                  ],
                ),
              ),
            ),
            style: OutlinedButton.styleFrom(shape: StadiumBorder()),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    var style1 = TextStyle(
        fontSize: 38,
        color: Color(0xff707070),
        fontFamily: 'Candara',
        fontWeight: FontWeight.bold);
    var style2 = TextStyle(
        fontSize: 42,
        color: Color(0xff707070),
        fontFamily: 'Candara',
        fontWeight: FontWeight.bold);
    double width_screen = MediaQuery.of(context).size.width;
    debugPrint(width_screen.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('ĐĂNG NHẬP'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff53e2d7), Color(0xff1EDCF2)])),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffF3F684), Color(0xff1EDCF2)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('./assets/use/phuonganh256.jpg'),
              radius: 128,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Password',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
