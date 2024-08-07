import 'package:flutter/material.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({super.key});

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  List images = [
    "assets/foodcart/Cookie.webp",
    "assets/foodcart/noodles.webp",
    "assets/foodcart/Kabab.webp",
    "assets/foodcart/Tea.webp"
  ];
  List names = ["Snacks", "Chinese", "Chinese", "Drinks"];
  List title = [
    "Sweetmeat French Dessert",
    "Chicken with Spicy Noodles",
    "Crispy Buffalo Chicken Wings",
    "Spiced Chai Cafe"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "FoodCart",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: ListView.builder(
          itemCount: images.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) => Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * 0.25,
              ),
              Positioned(
                bottom: 0,
                left: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: size.width * 0.8,
                  height: size.height * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 120,
                      ),
                      Column(
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const VerticalDivider(
                                  color: Colors.orange,
                                  thickness: 3,
                                ),
                                Text(
                                  names[index],
                                  style: const TextStyle(
                                      color: Colors.orange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                const Icon(
                                  Icons.share,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                const Icon(
                                  Icons.add_circle_outline_sharp,
                                  color: Colors.orange,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 210,
                            child: Text(
                              title[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),maxLines: 2,overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.emoji_food_beverage_outlined,
                                color: Colors.grey,
                              ),
                              Text(
                                "50 min",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Icon(
                                Icons.child_friendly,
                                color: Colors.grey,
                              ),
                              Text(
                                "8 lng",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  child: Image(
                    image: AssetImage(images[index]),
                    width: 130,
                    height: 150,
                  ))
            ],
          ),
        ));
  }
}
