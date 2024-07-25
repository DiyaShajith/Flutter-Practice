import 'package:flutter/material.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  width: 150,
                  height: 150,),
                Container(
            color: Colors.black,
            width: 150,
            height: 150,

                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: 150,
              height: 150,

            ),
          ],
        ),
      ),

    );
  }
}
