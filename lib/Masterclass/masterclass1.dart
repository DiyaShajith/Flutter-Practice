import 'package:basic_widgets/Masterclass/masterclass.dart';
import 'package:flutter/material.dart';

class Masterclass1 extends StatefulWidget {
  const Masterclass1({super.key});

  @override
  State<Masterclass1> createState() => _Masterclass1State();
}

class _Masterclass1State extends State<Masterclass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A148C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.orange[600],
              ),
              child: const Image(
                image: AssetImage("assets/space.png"),
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Image(
                image: AssetImage("assets/stars.png"),
                width: 130,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                "Graphic Design Master",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Container(
                    width: 110,
                    height: 50,
                    color: const Color(0xFF4A148C),
                    child: const Stack(
                      children: [
                        Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/freeky.png"),
                            )),
                        Positioned(
                            left: 45,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/girl.png"),
                            )),
                        Positioned(
                            left: 65,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/girl (1).png"),
                            )),
                        Positioned(
                            child: CircleAvatar(
                          backgroundImage: AssetImage("assets/girl2.png"),
                        ))
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "+28K Members",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple),
                    child: const Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pinkAccent),
                    child: const Image(
                      image: AssetImage(
                          "assets/pride-flag-with-colorful-paint-removebg-preview.png"),
                      fit: BoxFit.cover,
                    ),
                  )),
                  const Positioned(
                    left: 125,
                    top: 10,
                    child: Text(
                      "Introduction Design Graphics",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const Positioned(
                      left: 125,
                      top: 35,
                      child: Text(
                        "12 Minutes",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      left: 250,
                      top: 28,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.pinkAccent)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Masterclass()));
                          },
                          child: const Text(
                            "Free",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple),
              child: Stack(children: [
                Positioned(
                    child: Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow),
                  child: const Image(image: AssetImage("assets/popup.png")),
                )),
                const Positioned(
                    left: 125,
                    top: 10,
                    child: Text(
                      "Fundamentals of Design",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    left: 125,
                    top: 35,
                    child: Text(
                      "16 Minutes",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ))
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue),
                    child: const Image(image: AssetImage("assets/writing.png")),
                  )),
                  const Positioned(
                      left: 130,
                      child: Text(
                        "Layout Design",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  const Positioned(left: 127,top: 25,
                      child: Text(
                    "10 Minutes",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
