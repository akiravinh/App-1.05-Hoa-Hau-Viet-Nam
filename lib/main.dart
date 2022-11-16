import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider_NCC(),
    child: MaterialApp(
      title: 'Provider bán rượu',
      home: HomeScreen_1(),
    ),
  ));
}

class HomeScreen_1 extends StatelessWidget {
  const HomeScreen_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oc cho la co that'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.yellow, Colors.teal],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(context.watch<CounterProvider_NCC>().get_c.toString()),
            SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Page2()));
                },
                child: Text('Go to Page 2'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          context.read<CounterProvider_NCC>().plus();
        },
      ),
    );
  }
}

class CounterProvider_NCC extends ChangeNotifier {
  int _c = 1000;
  int get get_c => _c;
  void plus() {
    _c++;
    notifyListeners();
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oc cho la co that'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.yellow, Colors.teal],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(context.watch<CounterProvider_NCC>().get_c.toString()),
            SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go to Page 1'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          context.read<CounterProvider_NCC>().plus();
        },
      ),
    );
  }
}
