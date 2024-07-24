import 'package:flutter/material.dart';

class Deliveryapp5 extends StatefulWidget {
  const Deliveryapp5({super.key});

  @override
  State<Deliveryapp5> createState() => _Deliveryapp5State();
}

class _Deliveryapp5State extends State<Deliveryapp5> {
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
            padding: EdgeInsets.only(right: 120),
            child: Text(
              "Login to your account.",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "Create new account /",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                " Login Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 260),
            child: Text(
              "Username",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Username",
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 260),
            child: Text(
              "Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 200),
            child: Text(
              "Forgot password ?",
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),const SizedBox(
            height: 120,
          ),
          SizedBox(height: 40,width: 300,
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                onPressed: () {},
                child: const Text(
                  "Login Now",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ),const SizedBox(
            height: 20,
          ),
          SizedBox(height: 40,width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[300])),
                onPressed: () {},
                child: const Text(
                  "Register Now",
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
