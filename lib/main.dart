import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NCC(),
      child: MaterialApp(
        home: Page1(),
      ),
    );
  }
}

class NCC extends ChangeNotifier {
  int _number = 100;
  int get get_number => _number;
  plus() {
    _number++;
    notifyListeners();
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text('Page1 ne ba con'),
            Text(context.watch<NCC>().get_number.toString()),
            ElevatedButton(
                onPressed: (() => {context.read<NCC>().plus()}),
                child: Text('+1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Text('NEXT'))
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text('Page2 ne ba con'),
            Text(context.watch<NCC>().get_number.toString()),
            ElevatedButton(
                onPressed: (() => {context.read<NCC>().plus()}),
                child: Text('+1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page3()));
                },
                child: Text('NEXT'))
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text('Page2 ne ba con'),
            Text(context.watch<NCC>().get_number.toString()),
            ElevatedButton(
                onPressed: (() => {context.read<NCC>().plus()}),
                child: Text('+1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Text('NEXT'))
          ],
        ),
      ),
    );
  }
}
