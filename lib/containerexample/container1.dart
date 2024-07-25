import 'package:flutter/material.dart';

class Examplecont extends StatefulWidget {
  const Examplecont({super.key});

  @override
  State<Examplecont> createState() => _ExamplecontState();
}

class _ExamplecontState extends State<Examplecont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterBeads',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.all(40),
          padding: const EdgeInsets.all(40),
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Colors.red, boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              blurRadius: 20,
              blurStyle: BlurStyle.outer,
            )
          ]),
        ),
      ),
    );
  }
}
