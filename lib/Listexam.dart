import 'package:flutter/material.dart';

class Listexample extends StatefulWidget {
  const Listexample({super.key});

  @override
  State<Listexample> createState() => _ListexampleState();
}

class _ListexampleState extends State<Listexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Group List View Demo",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 320, top: 15),
              child: Text(
                "Team A",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  color: Colors.black,
                  width: 0.7,
                )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Klay Lewis",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 15,
                  child: Text(
                    "KL",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  color: Colors.black,
                  width: 0.7,
                )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Ehsan Woodard",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 15,
                  child: Text(
                    "EW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  color: Colors.black,
                  width: 0.7,
                )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "River Bains",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 15,
                  child: Text(
                    "RB",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 300,top: 15),
              child: Text(
                "Team B",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 0.7,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Toyah Downs",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 15,
                  child: Text(
                    "TD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 0.7,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Tyla Kane",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 15,
                  child: Text(
                    "TK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),Padding(
              padding: EdgeInsets.only(right: 300,top: 15),
              child: Text(
                "Team C",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 0.7,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Marcus Romero",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 15,
                  child: Text(
                    "MR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 0.7,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Farrah Parkes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.purpleAccent,
                  radius: 15,
                  child: Text(
                    "FP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
