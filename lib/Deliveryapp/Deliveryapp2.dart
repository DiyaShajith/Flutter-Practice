import 'package:flutter/material.dart';

class Deliveryapp3 extends StatefulWidget {
  const Deliveryapp3({super.key});

  @override
  State<Deliveryapp3> createState() => _Deliveryapp3State();
}

class _Deliveryapp3State extends State<Deliveryapp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20),
            child: Container(
                width: 400,
                height: 360,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/foodpot.png"),
                        fit: BoxFit.cover))),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Ordering food in",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          const Text(
            "a simple way.",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 38,
              fontStyle: FontStyle.italic,
              height: 0.8,
            ),
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
                      color: Colors.orangeAccent),
                ),
              ),
              Container(
                height: 5,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
