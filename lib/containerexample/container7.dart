import 'package:flutter/material.dart';

class Container7 extends StatefulWidget {
  const Container7({super.key});

  @override
  State<Container7> createState() => _Container7State();
}

class _Container7State extends State<Container7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(color: Colors.yellowAccent,height: 100,width: 250,
              ),Container(color:  Colors.blue,height: 100,width: 250,)
            ],
          ),
          Column(
            children: [
              Container(color: Colors.orange,height: 200,width: 300,),
            ],
          )
        ],
      ),
    );
  }
}
