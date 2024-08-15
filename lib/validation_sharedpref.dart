import 'package:flutter/material.dart';

class ValidationSharedpref extends StatefulWidget {
  const ValidationSharedpref({super.key});

  @override
  State<ValidationSharedpref> createState() => _ValidationSharedprefState();
}

class _ValidationSharedprefState extends State<ValidationSharedpref> {
  final TextEditingController __email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Validation",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Enter Your Email",
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                )),
            controller: __email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Password",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: const InputDecoration(
                labelText: "Enter Your Password",
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                prefixIcon: Icon(
                  Icons.keyboard,
                  color: Colors.white,
                )),
            controller: _password,
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  if (__email.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (BuildContext) {
                          return AlertDialog(
                            title: const Text(
                              "Error",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: const Text(
                              "email is required",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          );
                        });
                  } else if (_password.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (BuildContext) {
                          return AlertDialog(
                            title: const Text(
                              "Error",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: const Text(
                              "password is required",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"))
                            ],
                          );
                        });
                  }
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    __email.dispose();
    _password.dispose();
  }
}
