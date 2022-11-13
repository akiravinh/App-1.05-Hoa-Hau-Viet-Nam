import 'package:flutter/material.dart';
// import 'sub1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sống để làm gì',
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Sống để làm gì')),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.teal],
                      stops: [0.3, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight)),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.yellow, Colors.green],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.3, 0.7],
            )),
            child: Center(
              child: ElevatedButton(
                child: Text('Anh vào đi em chờ'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login2()),
                  );
                },
              ),
            ),
          ),
        ));
  }
}

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text('Tinh la gi'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
