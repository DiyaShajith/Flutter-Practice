import 'package:flutter/material.dart';
import 'package:text_marquee/text_marquee.dart';

class Testmarquee extends StatefulWidget {
  const Testmarquee({super.key});

  @override
  State<Testmarquee> createState() => _TestmarqueeState();
}

class _TestmarqueeState extends State<Testmarquee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Marquee Text",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [
          TextMarquee(
            duration: Duration(seconds: 10),
            rtl: true,
            '"Stay close to anything that makes you glad you are alive." -Hafez',
            spaceSize: 72,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
          )
        ],
      ),
    );
  }
}
