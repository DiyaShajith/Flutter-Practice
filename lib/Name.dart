import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Displaying'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: const Center(
          child: Text(
        'DIYA SHAJITH K',
        style: TextStyle(
            color: Colors.amber,
            fontSize: 25,
            wordSpacing: 5,
            letterSpacing: 2,
            fontWeight: FontWeight.w100,
            backgroundColor: Colors.black12,
            fontStyle: FontStyle.italic,
            shadows: [Shadow(color: Colors.white30, offset: Offset(5, 5))]),
      )),
    );
  }
}
