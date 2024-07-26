import 'package:flutter/material.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({super.key});

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FoodCart",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.35,
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 2, color: Colors.black)),
              ),
            ),
            Positioned(
                top: 20,
                child: Image(
                  image: AssetImage(
                    "assets/foodcart/foodcart1.webp",
                  ),
                  width: 180,
                  height: 180,
                ))
          ],
        ),
      ),
    );
  }
}
