import 'package:flutter/material.dart';

class Deliveryapp4 extends StatefulWidget {
  const Deliveryapp4({super.key});

  @override
  State<Deliveryapp4> createState() => _Deliveryapp4State();
}

class _Deliveryapp4State extends State<Deliveryapp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
                width: 320,
                height: 320,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/noodles-bowl-assortment.png"),
                        fit: BoxFit.cover))),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "You can order",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 55),
                child: Text(
                  "from",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    height: 0.3,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "anywhere.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 39,
                    fontStyle: FontStyle.italic,
                    height: 0.3,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Text(
            "adipiscing elit, sed do eiusmod tempor",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                ),
              ),
              Container(
                height: 5,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent),
              )
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          SizedBox(height: 40,width: 280,
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                onPressed: () {},
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          )
        ],
      ),
    );
  }
}
