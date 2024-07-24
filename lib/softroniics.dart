import 'package:flutter/material.dart';

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to softroniics'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: const Center(
            child: Text(
          'Courses: Mernstack\nFlutter\nData Science\nDigital Marketing\nFull Stack\nPython',
          style: TextStyle(color: Colors.cyan, fontSize: 25),
        )));
  }
}
