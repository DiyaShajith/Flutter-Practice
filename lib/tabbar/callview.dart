import 'package:flutter/material.dart';

class Callview extends StatefulWidget {
  const Callview({super.key});

  @override
  State<Callview> createState() => _CallviewState();
}

class _CallviewState extends State<Callview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text(
          "Calls",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Icon(
            Icons.qr_code_scanner_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),);
  }
}