import 'package:flutter/material.dart';

class Snackbarex extends StatefulWidget {
  const Snackbarex({super.key});

  @override
  State<Snackbarex> createState() => _SnackbarexState();
}

class _SnackbarexState extends State<Snackbarex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Flutter Snackbar",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              const snackdemo = SnackBar(
                content: Text("Hii this is a snackbar"),
                backgroundColor: Colors.green,
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo);
            },
            child: const Text("click here!!")),
      ),
    );
  }
}
