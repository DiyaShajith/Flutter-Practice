import 'package:basic_widgets/Instagram%20ui/Instagram%20UI2.dart';
import 'package:flutter/material.dart';

class Insta1 extends StatefulWidget {
  const Insta1({super.key});

  @override
  State<Insta1> createState() => _Insta1State();
}

class _Insta1State extends State<Insta1> {
  int pageIndex = 0;
  final pages = [const Insta1(), const Insta2()];

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'Sevillana', fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 32.0, // Set your desired font size here
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ), SizedBox(
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage(
                "assets/msg-removebg-preview.png",
              ),
            ),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  width: 450,
                  height: 125,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const Positioned(
                          top: 10,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              backgroundImage: AssetImage("assets/man1.png"),
                              radius: 35,
                            ),
                          )),
                      const Positioned(
                          top: 55,
                          left: 56,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 12,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )),
                      Positioned(
                          left: 95,
                          top: 16,
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Colors.pink),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                backgroundImage: AssetImage("assets/man2.png"),
                              ),
                            ),
                          )),
                      Positioned(
                          left: 185,
                          top: 16,
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Colors.pink),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                backgroundImage: AssetImage("assets/man3.png"),
                              ),
                            ),
                          )),
                      Positioned(
                          left: 275,
                          top: 16,
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Colors.pink),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("assets/man4.png"),
                              ),
                            ),
                          )),
                      Positioned(
                          left: 368,
                          top: 16,
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Colors.pink),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                backgroundImage: AssetImage("assets/man5.png"),
                              ),
                            ),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 95, left: 15),
                        child: Row(
                          children: [
                            Text(
                              "Your story",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "oliver",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 55),
                              child: Text(
                                "andrew",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "mateo",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "mathew",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/man6.png"),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Samuel",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              height: 300,
              color: Colors.white,
              child: const Image(
                image: AssetImage(
                  "assets/pebbles.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 30,
                  height: 25,
                  child: Image(
                    image: AssetImage(
                      "assets/favourite-heart.png",
                    ),
                  ),
                ),
              ),

                const SizedBox(
                  width: 40,
                  height: 30,
                  child: Image(
                    image: AssetImage(
                      "assets/chat.png",
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 35,
                  color: Colors.white,
                  child: const Image(
                    image: AssetImage(
                      "assets/share1 new.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 178),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    child: const Image(
                      image: AssetImage(
                        "assets/saved_new1-removebg-preview.png",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 65,
                    height: 30,
                    color: Colors.white,
                    child: const Stack(
                      children: [
                        Positioned(
                            left: 10,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/man4.png"),
                              radius: 10,
                            )),
                        Positioned(
                            left: 25,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/man3.png"),
                              radius: 10,
                            )),
                        Positioned(
                            left: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/man2.png"),
                              radius: 10,
                            )),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Liked by Grace and others",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text(
                "elise good times. great vibes.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
