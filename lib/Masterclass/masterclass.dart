import 'package:basic_widgets/Masterclass/masterclass1.dart';
import 'package:flutter/material.dart';

class Masterclass extends StatefulWidget {
  const Masterclass({super.key});

  @override
  State<Masterclass> createState() => _MasterclassState();
}

class _MasterclassState extends State<Masterclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A148C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text(
                "Online",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                "Master Class",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFAA00FF),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20, // Specify the position
                            left: 20, // Specify the position
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                // Center the text inside the container
                                child: Text(
                                  "Recommended",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 100,
                              left: 20,
                              child: Text(
                                "UI/UX DESIGNER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              )),
                          const Positioned(
                              top: 140,
                              left: 20,
                              child: Text(
                                "BEGINNER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              top: 180,
                              left: 55,
                              child: Container(
                                width: 250,
                                height: 200,
                                color: const Color(0xFFAA00FF),
                                child: const Image(
                                    image: AssetImage("assets/lady.png"),
                                    fit: BoxFit.fill),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orange[700],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20, // Specify the position
                            left: 20, // Specify the position
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextButton(
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25))),
                                      backgroundColor:
                                          WidgetStateProperty.all(
                                              Colors.grey[400])),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Masterclass1()));
                                  },
                                  child: const Text(
                                    "NEW CLASS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                            ),
                          ),
                          const Positioned(
                              top: 100,
                              left: 20,
                              child: Text(
                                "GRAPHIC DESIGNER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              )),
                          const Positioned(
                              top: 140,
                              left: 20,
                              child: Text(
                                "MASTER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              top: 180,
                              left: 55,
                              child: Container(
                                width: 250,
                                height: 200,
                                color: Colors.orange[700],
                                child: const Image(
                                    image: AssetImage("assets/ROBOT.png"),
                                    fit: BoxFit.fill),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "Free online class",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "From over 80 Lectures",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
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
                    top: 10, // Specify the position
                    left: 15, // Specify the position
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red[200]),
                      child: const Image(
                        image: AssetImage("assets/phone.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10, // Specify the position for the text
                    left: 175, // Specify the position for the text
                    child: Text(
                      "Flutter Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const Positioned(
                    top: 35, // Specify the position for the text
                    left: 175, // Specify the position for the text
                    child: Text(
                      "8 Hours",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Positioned(
                      top: 55,
                      left: 170,
                      child: Container(
                        width: 90,
                        height: 50,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: const Image(
                            image: AssetImage(
                              "assets/stars.png",
                            ),
                            fit: BoxFit.fitWidth),
                      )),
                  const Positioned(
                      left: 335,
                      top: 40,
                      child: Icon(
                        Icons.pause_presentation,
                        color: Colors.redAccent,
                        size: 32.5,
                      ))
                ],
              ),
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
                    top: 10, // Specify the position
                    left: 15, // Specify the position
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepPurple[200]),
                      child: const Image(
                        image: AssetImage("assets/sitting1.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    left: 175,
                    child: Text(
                      "Full Stack Javascript",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const Positioned(
                    top: 35, // Specify the position for the text
                    left: 175, // Specify the position for the text
                    child: Text(
                      "6 Hours",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Positioned(
                      top: 55,
                      left: 170,
                      child: Container(
                        width: 90,
                        height: 50,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: const Image(
                            image: AssetImage(
                              "assets/stars.png",
                            ),
                            fit: BoxFit.fitWidth),
                      )),
                  const Positioned(
                      left: 335,
                      top: 40,
                      child: Icon(
                        Icons.pause_presentation,
                        color: Colors.redAccent,
                        size: 32.5,
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
