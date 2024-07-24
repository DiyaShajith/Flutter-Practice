import 'package:flutter/material.dart';

class Loginpageuix extends StatefulWidget {
  const Loginpageuix({super.key});

  @override
  State<Loginpageuix> createState() => _LoginpageuixState();
}

class _LoginpageuixState extends State<Loginpageuix> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 150),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 175),
                child: Text(
                  'Enter a beautiful world',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  width: 450,
                  height: 635,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.white),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 165, right: 30, left: 30),
                    child: Column(
                      children: [
                        TextField(
                            controller: _email,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.mail,
                                  color: Colors.black,
                                ),
                                hintText: 'Your Email',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                fillColor: Colors.grey,
                                filled: true)),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 1, right: 1, top: 25),
                          child: TextField(
                            obscureText: true,
                            controller: _password,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                filled: true,
                                fillColor: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'forget password',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.blue),
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {
                                if(_email.text.isEmpty){
                                  showDialog(context: context, builder: (BuildContext context){
                                    return AlertDialog(title: const Text('Error'),content: const Text('Email is Required'),actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: const Text('ok'))
                                    ],);
                                  });
                                }else if(_password.text.isEmpty){
                                  showDialog(context: context, builder: (BuildContext context){
                                    return AlertDialog(
                                      title: const Text('Error'),content: const Text('Password is Required'),actions: [
                                        TextButton(onPressed: (){
                                          Navigator.of(context).pop();
                                        }, child: const Text('ok'))
                                    ],
                                    );
                                  });
                                }
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 100),
                              child: Text(
                                'Dont have an account ?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Register Now',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
