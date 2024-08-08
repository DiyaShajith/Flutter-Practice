import 'package:flutter/material.dart';

class Updatesview extends StatefulWidget {
  const Updatesview({super.key});

  @override
  State<Updatesview> createState() => _UpdatesviewState();
}

class _UpdatesviewState extends State<Updatesview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Updates",
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
      ),
    );
  }
}
