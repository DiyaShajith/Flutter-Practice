import 'package:basic_widgets/Icecream.dart';
import 'package:flutter/material.dart';

class Buttonwidget extends StatefulWidget {
  const Buttonwidget({super.key});

  @override
  State<Buttonwidget> createState() => _ButtonwidgetState();
}

class _ButtonwidgetState extends State<Buttonwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BUTTON WIDGET',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 10,
        leading: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.home,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          const Center(
              child: Text(
            'Button Example',
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red)),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Icecont()));
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 550),
            child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
