import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(),
    child: MaterialApp(
      title: 'Provider bán rượu',
      home: CounterHome(),
    ),
  ));
}

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.watch<CounterProvider>().get_c.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          context.read<CounterProvider>().plus();
        },
      ),
    );
  }
}

class CounterProvider extends ChangeNotifier {
  int _c = 1000;
  int get get_c => _c;
  void plus() {
    _c++;
    notifyListeners();
  }
}
