import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animationview extends StatefulWidget {
  const Animationview({super.key});

  @override
  State<Animationview> createState() => _AnimationviewState();
}

class _AnimationviewState extends State<Animationview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "AnimationView",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: size.height * 0.6,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Lottie.asset("assets/Animation - 1723005010559.json"),
            )
          ],
        ),
      ),
    );
  }
}
