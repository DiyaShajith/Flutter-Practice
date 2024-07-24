import 'package:flutter/material.dart';

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text(
          'Aug 26,2020',
          style: TextStyle(color: Colors.blueGrey, fontSize: 20),
        ),
        leading: const Icon(Icons.line_weight),
        actions: const [Icon(Icons.face_unlock_outlined)],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My Task',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent,
                    ),
                    child: Image.asset(
                      'assets/360_F_347118877_XGwODDXk6GrXMTaqbwssjTB60lysPdrm.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurpleAccent,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 20)
                        ]),
                    child: Image.asset(
                      'assets/360_F_347118877_XGwODDXk6GrXMTaqbwssjTB60lysPdrm.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange),
                    child: Image.asset(
                      'assets/360_F_347118877_XGwODDXk6GrXMTaqbwssjTB60lysPdrm.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlueAccent),
                  child: Image.asset(
                    'assets/360_F_347118877_XGwODDXk6GrXMTaqbwssjTB60lysPdrm.jpg',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'On Going',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 255),
                  child: Text(
                    'see all',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 250,
                height: 180,
                decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/heli.jpg',)),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,boxShadow: const [BoxShadow(color: Colors.white70,blurRadius: 18,blurStyle: BlurStyle.outer)]),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ' Startup Website Design\n with responsive',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
