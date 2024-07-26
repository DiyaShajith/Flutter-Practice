import 'package:flutter/material.dart';

class Lisstviewseparatorex extends StatefulWidget {
  const Lisstviewseparatorex({super.key});

  @override
  State<Lisstviewseparatorex> createState() => _LisstviewseparatorexState();
}

class _LisstviewseparatorexState extends State<Lisstviewseparatorex> {
  List icons = [
    Icons.bed_outlined,
    Icons.chair_alt_outlined,
    Icons.chair_outlined,
  ];
  List titles = ["Bed", "Chair", "Sofa"];
  List subtitle = ["King Size Bed", "King Size Chair", "Sofa Cum Bed"];
  List colors=[Color(0XFF69B7F9),Color(0XFF01C7BE),Color(0XFF93AAD6)];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: size.width * 0.95,
                height: size.height * .28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top Rated",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Buy",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Furniture",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image(
                      image: NetworkImage(
                        "https://cdn-icons-png.freepik.com/512/3536/3536727.png",
                      ),
                      width: 180,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(separatorBuilder: (context, index) => SizedBox(height: 10,),
                itemCount: icons.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(5),
                  height: size.height * 0.1,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icons[index],
                        size: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titles[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            subtitle[index],
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.delete_outline,
                        size: 45,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
