import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends StatelessWidget {
  const CounterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    final countpro = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, counter, child) => Text(
         counter.countval.toString(),
          style: const TextStyle(fontSize: 30),
        ),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countpro.increment();
        },
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
