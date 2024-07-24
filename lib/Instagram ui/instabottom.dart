import 'package:flutter/material.dart';

import 'Instagram UI1.dart';
import 'Instagram UI2.dart';

class InstabottomNavigation extends StatefulWidget {
  const InstabottomNavigation({super.key});

  @override
  State<InstabottomNavigation> createState() => _InstabottomNavigationState();
}

class _InstabottomNavigationState extends State<InstabottomNavigation> {
  int pageIndex = 0;
  final pages = [const Insta1(), const Insta2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (newIndex) {
          setState(() {
            pageIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",), BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Profile",)
        ],
      ),
    );
  }
}
