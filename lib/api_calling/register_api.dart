import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Registerapi extends StatefulWidget {
  const Registerapi({super.key});

  @override
  State<Registerapi> createState() => _RegisterapiState();
}

class _RegisterapiState extends State<Registerapi> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Registerview",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Password",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    register();
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          ),
        ));
  }

  Future register() async {
    try {
      final response = await http
          .post(Uri.parse("https://reqres.in/api/register"), body: {
        "email": emailcontroller.text,
        "password": passwordcontroller.text
      });
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Account Created Successful")));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
