import 'package:flutter/material.dart';

class Greenhublogin extends StatefulWidget {
  const Greenhublogin({super.key});

  @override
  State<Greenhublogin> createState() => _GreenhubloginState();
}

class _GreenhubloginState extends State<Greenhublogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA5D6A7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 250,
              child: Image.asset(
                'assets/Greenhublogin.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome to GreenHub',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 330,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 250, top: 45),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.forward_to_inbox_outlined,
                              color: Colors.green,
                            ),
                            hintText: 'Enter your Email id',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2))),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 230, top: 10),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_open,
                              color: Colors.green,
                            ),
                            hintText: 'Enter your Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: MaterialButton(
                        color: Colors.green,
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          const Text(
                            'Create New Account?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
