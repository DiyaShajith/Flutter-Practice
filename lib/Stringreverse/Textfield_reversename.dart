import 'package:flutter/material.dart';

class TextfieldReversename extends StatefulWidget {
  const TextfieldReversename({super.key});

  @override
  State<TextfieldReversename> createState() => _TextfieldReversenameState();
}

class _TextfieldReversenameState extends State<TextfieldReversename> {
  final TextEditingController _name = TextEditingController();
  String reversedval = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Reverse the String",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Before Reverse String is: ",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                  hintText: "Enter the String",
                  fillColor: Colors.grey,
                  filled: true),
            ),
          ),
          Center(
            child: Text(
              reversedval,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellow)),
                onPressed: () {
                  var uservalue = _name.text;
                  var value = uservalue.split("").reversed.join();
                  setState(() {
                    reversedval = value;
                  });
                },
                child: const Text(
                  "Click to Reverse",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
