import 'package:flutter/material.dart';

class Upgradeapp extends StatefulWidget {
  const Upgradeapp({super.key});

  @override
  State<Upgradeapp> createState() => _UpgradeappState();
}

class _UpgradeappState extends State<Upgradeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.deepPurple,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'English Lessons',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.deepPurple,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.deepPurple,
                  child: const Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  color: Colors.redAccent,
                  child: const Center(
                    child: Text(
                      'Beginner',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 30,
                  color: Colors.deepPurple,
                  child: const Center(
                    child: Text(
                      'Intermediate',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 320,
                      height: 200,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 320,
                      height: 200,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 320,
                      height: 200,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
