import 'package:flutter/material.dart';

import 'Instagram UI1.dart';

class Insta2 extends StatefulWidget {
  const Insta2({super.key});

  @override
  State<Insta2> createState() => _Insta2State();
}

class _Insta2State extends State<Insta2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Samuel",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Insta1()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/man6.png"),
                    radius: 40,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "174",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Posts",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "772K",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Followers",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "714",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                "Samuel Queo",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 310),
              child: Text(
                "Artist",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 275),
              child: Text(
                "DESIGNER",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 205),
              child: Text(
                "isabella@art.design",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "Followed by jenna and anna",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: Border.all(width: 1, color: Colors.blueAccent),
                  color: Colors.blueAccent,
                  onPressed: () {},
                  child: const Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  shape: Border.all(width: 1),
                  onPressed: () {},
                  child: const Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                MaterialButton(
                  shape: Border.all(width: 1),
                  onPressed: () {},
                  child: const Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                MaterialButton(
                    minWidth: 5,
                    shape: Border.all(width: 1),
                    onPressed: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.grid_on,
                  color: Colors.black,
                  size: 25,
                ),
                SizedBox(
                  width: 30,
                  height: 25,
                  child: Image(image: AssetImage("assets/reels.png")),
                ),
                SizedBox(
                  width: 30,
                  height: 22,
                  child: Image(image: AssetImage("assets/play-button.png")),
                ),
                Icon(
                  Icons.perm_contact_calendar_outlined,
                  size: 25,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    color: Colors.grey,
                    child: const Image(image: AssetImage("assets/n0.jpg")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n1.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n2.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n3.jpg")),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    color: Colors.grey,
                    child: const Image(image: AssetImage("assets/n4.jpg")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n5.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n6.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(image: AssetImage("assets/n7.jpg")),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    color: Colors.grey,
                    child: const Image(
                      image: AssetImage("assets/n8.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(
                        image: AssetImage("assets/n9.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(
                        image: AssetImage("assets/n10.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.grey,
                      child: const Image(
                        image: AssetImage("assets/n11.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
