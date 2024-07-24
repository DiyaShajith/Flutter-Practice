import 'package:flutter/material.dart';

class Containe4 extends StatefulWidget {
  const Containe4({super.key});

  @override
  State<Containe4> createState() => _Containe4State();
}

class _Containe4State extends State<Containe4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(color: Colors.tealAccent,height: 150,width: 150,
              ),Container(color: Colors.black,height: 150,width: 150,
              )
            ],
          ),Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.blueAccent,height: 150,width: 150,),
            ],
          ),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(color:Colors.yellow,height: 150,width: 150,
              ),Container(color: Colors.pinkAccent,height: 150,width: 150,)
            ],
          )
        ],
      ),
    );
  }
}
