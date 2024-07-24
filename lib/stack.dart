import 'package:flutter/material.dart';

class StackEx extends StatefulWidget {
  const StackEx({super.key});

  @override
  State<StackEx> createState() => _StackExState();
}

class _StackExState extends State<StackEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "CardStackView",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Stack(
        children: [
          Positioned(top: 25,left: 45,
              child: Container(width: 300,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent),child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45),),
              ),
          )),Positioned(top: 85,left: 45,
              child: Container( width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.brown), child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45),),
              ),
              )),Positioned(top: 145,left: 45,
              child: Container( width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.purpleAccent), child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45),),
              ),
              )),Positioned(top: 205,left: 45,
              child: Container( width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.purple), child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45),),
              ),
              ))
        ],
      ),
    );
  }
}
