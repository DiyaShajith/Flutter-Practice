import 'package:flutter/material.dart';

class Dropdownlistex extends StatefulWidget {
  const Dropdownlistex({super.key});

  @override
  State<Dropdownlistex> createState() => _DropdownlistexState();
}

class _DropdownlistexState extends State<Dropdownlistex> {
  String? _selecteditem;
  final List<String> _dropdownitems = [
    "Android",
    "IOS",
    "Node",
    "PHP",
    "Java",
    "Python"
  ];
  String? _selected;
  final List<String> _dropdownitems2 = [
    "Flutter",
    "Mern",
    "Data Science",
    "Digital Marketing",
    "FullStack",
    "Django"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Dropdown List",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
                value: _selecteditem,
                items: _dropdownitems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    _selecteditem = newvalue;
                  });
                }),
            DropdownButton<String>(
                value: _selected,
                items: _dropdownitems2.map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    _selected = newvalue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
