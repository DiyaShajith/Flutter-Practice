import 'package:basic_widgets/Green%20hub/Greenhub%20login.dart';
import 'package:basic_widgets/Green%20hub/greenhubsign.dart';
import 'package:basic_widgets/Masterclass/masterclass.dart';
import 'package:basic_widgets/Masterclass/masterclass1.dart';
import 'package:basic_widgets/Registration%20form.dart';
import 'package:flutter/material.dart';



class Navigation1 extends StatefulWidget {
  const Navigation1({super.key});

  @override
  State<Navigation1> createState() => _Navigation1State();
}

class _Navigation1State extends State<Navigation1> {
  int currentIndex = 0;
  final pages = [
    const Greenhublogin(),
    const Greenhub(),
    const Masterclass(),
    const Masterclass1(),
    const Registrationform()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.energy_savings_leaf,
                color: Colors.green,
              ),
              label: "Greenhub"),BottomNavigationBarItem(
              icon: Icon(
                Icons.energy_savings_leaf_outlined,
                color: Colors.green,
              ),
              label: "Greenhubsign"),BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_accounts_outlined,
                color: Colors.black,
              ),
              label: "Master"),BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_accounts,
                color: Colors.black,
              ),
              label: "MasterDesign"),BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt,
                color: Colors.black
              ),
              label: "Form")
        ],
      ),
    );
  }
}
