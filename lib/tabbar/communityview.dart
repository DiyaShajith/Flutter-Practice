import 'package:flutter/material.dart';

class Communityview extends StatefulWidget {
  const Communityview({super.key});

  @override
  State<Communityview> createState() => _CommunityviewState();
}

class _CommunityviewState extends State<Communityview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Communities",
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
