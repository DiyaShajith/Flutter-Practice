import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row column',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: Colors.green,
        centerTitle: false,
      ),
      body: Row(
        children: [
          Container(
            height: 30,
            width: 50,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                 ),
            ),
          ),Container( height: 30,
            width: 50,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'TO',
              style: TextStyle(
                  color: Colors.black12,
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
            ),)
        ],
      ),
    );
  }
}
