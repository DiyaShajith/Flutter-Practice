import 'package:flutter/material.dart';

class CounterProvider extends StatelessWidget {
  const CounterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: const Center(
        child: Text(
          "count",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get countval => _count;
  void increment() {
    _count++;
    notifyListeners();
  }
}
