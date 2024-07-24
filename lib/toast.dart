import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastexam extends StatefulWidget {
  const Toastexam({super.key});

  @override
  State<Toastexam> createState() => _ToastexamState();
}

class _ToastexamState extends State<Toastexam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
    Fluttertoast.showToast(
    msg: "msg",
    backgroundColor: Colors.black,
        fontSize: 22,
        textColor: Colors.white);
            // Fluttertoast.showToast(
            //   msg: 'flutter',
            //   backgroundColor: Colors.grey,
            // );
      }, child: const Text("flutter message"))),
    );
  }
}
