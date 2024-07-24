import 'package:flutter/material.dart';

import 'Deliveryapp1.dart';

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Deliveryapp1(),
    );
  }
}

class Deliveryapp1 extends StatefulWidget {
  const Deliveryapp1({super.key});

  @override
  State<Deliveryapp1> createState() => _Deliveryapp1State();
}

class _Deliveryapp1State extends State<Deliveryapp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,

      body: Padding(
        padding: const EdgeInsets.only(top: 320,left: 140),
        child: Column(
          children: [
            InkWell(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Deliveryapp2()));
            },
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/loading.png"),
                        fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
