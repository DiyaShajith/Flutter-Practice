import 'package:flutter/material.dart';

class Deliveryapp2 extends StatefulWidget {
  const Deliveryapp2({super.key});

  @override
  State<Deliveryapp2> createState() => _Deliveryapp2State();
}

class _Deliveryapp2State extends State<Deliveryapp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20),
            child: Container(
                width: 320,
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Food2.png"),
                        fit: BoxFit.cover))),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Our Unmatched",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          const Text(
            "delicacies.",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
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
                    color: Colors.orangeAccent),
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
