import 'package:flutter/material.dart';

class Implictanimation extends StatefulWidget {
  const Implictanimation({super.key});

  @override
  State<Implictanimation> createState() => _ImplictanimationState();
}

class _ImplictanimationState extends State<Implictanimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Implicit Animation",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          FadeInImage(
              fadeInDuration: Duration(milliseconds: 1800),
              placeholder: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9cSGzVkaZvJD5722MU5A-JJt_T5JMZzotcw&s"),
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaRLvHjJoUnuaSs4R3b1Vn6jt_jwCo3ELygw&s"))
        ],
      ),
    );
  }
}
