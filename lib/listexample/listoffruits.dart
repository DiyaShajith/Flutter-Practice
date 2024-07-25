import 'package:flutter/material.dart';

class Listoffruits extends StatefulWidget {
  const Listoffruits({super.key});

  @override
  State<Listoffruits> createState() => _ListoffruitsState();
}

class _ListoffruitsState extends State<Listoffruits> {
  String? _fruits;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "List of Fruits",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 55, top: 55),
        child: Container(
          height: 550,
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 135),
                child: Text(
                  "List of Fruits",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                title: const Text(
                  "Apple",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Radio(
                    value: 'apple',
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),
              ListTile(
                title: const Text(
                  "Banana",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "banana",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Coconut",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "coconut",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Pineapple",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "pineapple",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Papaya",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "papaya",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Mango",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "mango",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Blackberries",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "blackberries",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),ListTile(
                title: const Text(
                  "Guava",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    value: "guava",
                    groupValue: _fruits,
                    onChanged: (String? value) {
                      setState(() {
                        _fruits = value;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
