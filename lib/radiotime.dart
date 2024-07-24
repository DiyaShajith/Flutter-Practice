import 'package:flutter/material.dart';

class Radiotimecont extends StatefulWidget {
  const Radiotimecont({super.key});

  @override
  State<Radiotimecont> createState() => _RadiotimecontState();
}

class _RadiotimecontState extends State<Radiotimecont> {
  String? _time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "RadioButton TimeContainer",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2.5)),
                child: RadioMenuButton(
                    value: "Time",
                    groupValue: _time,
                    onChanged: (String? value) {
                      setState(() {
                        _time = value;
                      });
                    },
                    child: const Text(
                      "09:30-11:30",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    color: Colors.green),
                child: RadioMenuButton(
                    value: "Times",
                    groupValue: _time,
                    onChanged: (String? value) {
                      setState(() {
                        _time = value;
                      });
                    },
                    child: const Text(
                      "11:30-13:30",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2.5)),
                child: RadioMenuButton(
                    value: "time",
                    groupValue: _time,
                    onChanged: (String? value) {
                      setState(() {
                        _time = value;
                      });
                    },
                    child: const Text(
                      "14:00-16:00",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.5),color: const Color(0xFFE0E0E0)),
                child: RadioMenuButton(
                    value: "ti",
                    groupValue: _time,
                    onChanged: (String? value) {
                      setState(() {
                        _time = value;
                      });
                    },
                    child: const Text(
                      "16:30-18:30",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.5),color: const Color(0xFFE0E0E0)), child: RadioMenuButton(
                  value: "tim",
                  groupValue: _time,
                  onChanged: (String? value) {
                    setState(() {
                      _time = value;
                    });
                  },
                  child: const Text(
                    "19:00-21:00",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
              ),
              Container(
                width: 150,
                height: 46.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.5),color: const Color(0xFFE0E0E0)), child: RadioMenuButton(
                  value: "timm",
                  groupValue: _time,
                  onChanged: (String? value) {
                    setState(() {
                      _time = value;
                    });
                  },
                  child: const Text(
                    "22:00-23:59",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
              )
            ],
          )
        ],
      ),
    );
  }
}
