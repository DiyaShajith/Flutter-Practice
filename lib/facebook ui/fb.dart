import 'package:basic_widgets/facebook%20ui/fb1.dart';
import 'package:flutter/material.dart';

class Fbpage extends StatefulWidget {
  const Fbpage({super.key});

  @override
  State<Fbpage> createState() => _FbpageState();
}

class _FbpageState extends State<Fbpage> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: 420,
                height: 220,
                child: Image.asset("assets/face.jpg", fit: BoxFit.cover)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "English.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Spanish.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "More..",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(hintText: "Phone or email",),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(hintText: "Password",suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: MaterialButton(
                color: Colors.blue,
                minWidth: double.infinity,
                onPressed: () {
                  if (_phone.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Error"),
                            content: const Text("Phone or Email is Required"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("OK"))
                            ],
                          );
                        });
                  } else if (_password.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Error"),
                            content: const Text("Password is Required"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("OK"))
                            ],
                          );
                        });
                  }
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 0.5,
                  color: Colors.grey,
                ),
                const Text(
                  " OR",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Container(width: 170, height: 0.5, color: Colors.blueGrey)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Facebookcreate()));
                },
                child: const Text(
                  "Create new Facebook account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
