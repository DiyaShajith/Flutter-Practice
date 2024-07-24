import 'package:flutter/material.dart';

class Icecont extends StatefulWidget {
  const Icecont({super.key});

  @override
  State<Icecont> createState() => _IcecontState();
}

class _IcecontState extends State<Icecont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: const Icon(Icons.line_weight),
        actions: const [Icon(Icons.shopping_cart_outlined)],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/8810733.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 700,
                    height: 60,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [BoxShadow(color: Colors.grey)]),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange),
                    child: const Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.orange,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.orange),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                offset: Offset(3, 3))
                          ],
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/delicious-ice-cream-with-chocolate (1).jpg'),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 140, bottom: 180),
                        child: Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                offset: Offset(3, 3))
                          ],
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/delicious-ice-cream-with-chocolate (1).jpg'),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 140, bottom: 180),
                        child: Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                offset: Offset(3, 3))
                          ],
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/delicious-ice-cream-with-chocolate (1).jpg'),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 140, bottom: 180),
                        child: Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                offset: Offset(3, 3)),
                          ],
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/delicious-ice-cream-with-chocolate (1).jpg'),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 140, bottom: 180),
                        child: Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 750,
                height: 45,
                color: Colors.white,
                child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.orange,
                          size: 25,
                        ),
                        Text('Shop',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w300,fontSize: 14),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.card_giftcard,
                          color: Color(0xFFFFE0B2),
                          size: 25,
                        ),
                        Text('Gifts',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w300,fontSize: 14),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.local_offer,
                          color: Color(0xFFFFE0B2),
                          size: 25,
                        ),
                        Text('Offers',style: TextStyle(color: Colors.orange,fontSize: 14,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.manage_accounts,
                          color: Color(0xFFFFE0B2),
                          size: 25,
                        ),
                        Text('Me',style: TextStyle(color: Colors.orange,fontSize: 14,fontWeight: FontWeight.w300),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
