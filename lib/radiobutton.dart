import 'package:flutter/material.dart';

class Radiobuttonex extends StatefulWidget {
  const Radiobuttonex({super.key});

  @override
  State<Radiobuttonex> createState() => _RadiobuttonexState();
}

class _RadiobuttonexState extends State<Radiobuttonex> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color: Colors.yellowAccent,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25, top: 5),
            child: Icon(
              Icons.search,
              color: Colors.yellowAccent,
            ),
          )
        ],
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Radio Button Example',
            style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.transparent,
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Select Your Gender",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Male',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  leading: Radio(
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                ),
                ListTile(
                  title: const Text(
                    "Female",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Others',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  leading: Radio(
                      value: "Others",
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Text(
                  "Marital Status",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                RadioListTile(
                    title: const Text(
                      "Married",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    value: "Male",
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    }),RadioListTile(title: const Text("Unmarried",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    value: "Unmarried", groupValue: status, onChanged: (String? value){
                      setState(() {
                        status=value;
                      });
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
