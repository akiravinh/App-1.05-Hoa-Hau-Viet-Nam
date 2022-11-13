// APP login để xem ảnh gái xinh ( hoa hậu Ngọc Mai )
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Em +',
      home: Scaffold(
        appBar: AppBar(
          title: Text('28đ = 4.5tr'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(3),
      children: <Widget>[
        SP(
          name: 'iPhone 14 PM',
          description: 'Sieu pham',
          price: 35000000,
          image: 'assets/use/logo/14pm.jpg',
        ),
        SP(
          name: 'Samsung S22 Ultra',
          description: 'Trung pham',
          price: 25000000,
          image: 'assets/use/logo/s22u.jpg',
        ),
        SP(
          name: 'Hoa hau Ngoc Mai',
          description: 'Mệnh phụ phu nhân',
          price: 1000000000000,
          image: 'assets/use/hh1.jpg',
        ),
        SP(
          name: 'A hau 1 Nguyen Phuong Anh',
          description: 'Mệnh phụ phu nhân',
          price: 230000000000,
          image: 'assets/use/hh3.jpg',
        ),
        Container(
          padding: EdgeInsets.all(0),
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 40, 137, 36),
              Color.fromARGB(255, 222, 235, 80),
            ],
          )),
          child: Center(
            child: Text(
              'Hello Gradient!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SP extends StatelessWidget {
  late String name;
  late String description;
  late int price;
  late String image;
  SP(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});

  // SP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(children: [
        SizedBox(
          width: 270,
          child: Image.asset(this.image),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${this.name}'),
            Text('${this.description}'),
            Text('${this.price}'),
          ],
        )
      ]),
    );
  }
}
