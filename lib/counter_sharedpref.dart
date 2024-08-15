import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counterapp extends StatefulWidget {
  const Counterapp({Key? key}) : super(key: key);
  @override
  _CounterappState createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }


  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  void _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes
      // auto-formatting nicer for build methods.
    );
  }
}
