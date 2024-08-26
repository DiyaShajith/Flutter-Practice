import 'package:flutter/material.dart';

class Animatedcontainer extends StatefulWidget {
  const Animatedcontainer({super.key});

  @override
  State<Animatedcontainer> createState() => _AnimatedcontainerState();
}

class _AnimatedcontainerState extends State<Animatedcontainer> {
  bool clr = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Animated Container",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 600,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: clr ? Colors.blueGrey : Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 600,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: clr ? Colors.pinkAccent : Colors.brown,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 600,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: clr ? Colors.deepPurpleAccent : Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: size.width * 0.5,
              height: 50,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.deepPurple)),
                  onPressed: () {
                    setState(() {
                      clr = !clr;
                    });
                  },
                  child: const Text(
                    "Change Color",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
