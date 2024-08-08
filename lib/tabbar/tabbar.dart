import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home_filled),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.home_filled),
            Icon(Icons.search),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
