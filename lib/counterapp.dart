import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counterinc extends StatefulWidget {
  const Counterinc({super.key});

  @override
  State<Counterinc> createState() => _CounterincState();
}

class _CounterincState extends State<Counterinc> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    _loadcounter();
  }

  void _loadcounter() async {
    final prefers = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefers.getInt("counter") ?? 0);
    });
  }

  void _incrementcounter() async {
    final prefers = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefers.getInt("counter") ?? 0) + 1;
      prefers.setInt("counter", _counter);
    });
  }

  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shared Preferences",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have pushed this button main times"),
            Text("$_counter"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "increment",
        onPressed: () {
          _incrementcounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
