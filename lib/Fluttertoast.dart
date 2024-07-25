import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatefulWidget {
  const FlutterToast({Key? key}) : super(key: key);

  @override
  _FlutterToastState createState() => _FlutterToastState();

  static void showToast({required String msg, required int fontsize}) {}
}

class _FlutterToastState extends State<FlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter toast"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'flutter toast',
              backgroundColor: Colors.black,fontSize: 18
            );
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            color: Colors.green,
            child: const Text(
              'Show Toast',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

      ),
    );
  }
}
