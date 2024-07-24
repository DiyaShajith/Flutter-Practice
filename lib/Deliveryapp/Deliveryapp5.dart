import 'package:flutter/material.dart';

class Deliveryapp6 extends StatefulWidget {
  const Deliveryapp6({super.key});

  @override
  State<Deliveryapp6> createState() => _Deliveryapp6State();
}

class _Deliveryapp6State extends State<Deliveryapp6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 280),
            child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/refresh.png")))),
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/google.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/apple.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/facebook.png"))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 90),
            child: Text(
              "Create your new account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
          ),const Text("Create an account to start looking for the",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
