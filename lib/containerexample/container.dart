import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container Example',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.black12,
              letterSpacing: 4),
        ),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(width: 2, color: Colors.yellow),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.white10,
            ),
          ],
        ),
        child: const Text(
          'WELCOME TO FLUTTER',
          style: TextStyle(
              color: Colors.green,
              fontSize: 15,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
              wordSpacing: 5,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.greenAccent),
        ),
      ),
    );
  }
}
