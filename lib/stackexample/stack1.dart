import 'package:flutter/material.dart';

class Stackex2 extends StatefulWidget {
  const Stackex2({super.key});

  @override
  State<Stackex2> createState() => _Stackex2State();
}

class _Stackex2State extends State<Stackex2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 180,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 160,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.yellowAccent,
              radius: 140,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 120,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 100,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 80,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              radius: 70,
            ),
          ),const Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 380,left: 5),
            child: Container(width: 400,height: 400,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
