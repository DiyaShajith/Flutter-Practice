import 'package:flutter/material.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 500,child: Image.network('https://www.google.com/imgres?q=Hd%20images&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fthumbnails%2F036%2F135%2F738%2Fsmall%2Fai-generated-colored-water-drops-on-abstract-background-water-drops-on-colorful-background-colored-wallpaper-ultra-hd-colorful-wallpaper-background-with-colored-bubbles-photo.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos%2Fwallpaper-hd&docid=6O5LZv-ARmAbaM&tbnid=4p320KTUPXyM5M&vet=12ahUKEwju9-KWh-6FAxXB9zgGHVJKCs4QM3oECHAQAA..i&w=363&h=200&hcb=2&itg=1&ved=2ahUKEwju9-KWh-6FAxXB9zgGHVJKCs4QM3oECHAQAA',fit: BoxFit.fitWidth,)
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,child: Image.asset('assets/abc1.jpeg',fit: BoxFit.fitWidth,)
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,child: Image.asset('assets/abc.jpg'),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 150,
                    height: 150,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.yellow,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.yellow,
                  height: 150,
                  width: 150,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
