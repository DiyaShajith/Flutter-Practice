import 'package:flutter/material.dart';

class TextAnimated extends StatefulWidget {
  const TextAnimated({super.key});

  @override
  State<TextAnimated> createState() => _TextAnimatedState();
}

class _TextAnimatedState extends State<TextAnimated> {
  bool txt = false;
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
        child: Center(
          child: Column(
            children: [
              AnimatedOpacity(
                opacity: txt ? 1 : .2,
                duration: const Duration(milliseconds: 600),
                child: const Text(
                  "Hey Welcome to Flutter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
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
                        txt = !txt;
                      });
                    },
                    child: const Text(
                      "Change Opacity",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
