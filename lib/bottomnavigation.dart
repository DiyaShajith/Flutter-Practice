import 'package:basic_widgets/Instagram%20ui/instagramlogin.dart';
import 'package:basic_widgets/Task%20ui/project.dart';
import 'package:flutter/material.dart';



class Navigationbarex extends StatefulWidget {
  const Navigationbarex({super.key});

  @override
  State<Navigationbarex> createState() => _NavigationbarexState();
}

class _NavigationbarexState extends State<Navigationbarex> {
  int pageIndex = 0;
  final pages = [const Instalogin(), const Project()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom NavigationBar"),
      ),
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
              Icons.message,
              color: Colors.black,
            ),
            label: "Message",)
        ],
      ),
    );
  }
}
