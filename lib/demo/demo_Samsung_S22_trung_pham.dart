import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lâu lâu rồi không build ứng dụng'),
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
          width: 200,
          height: 120,
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
