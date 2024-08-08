import 'package:basic_widgets/tabbar/callview.dart';
import 'package:basic_widgets/tabbar/communityview.dart';
import 'package:basic_widgets/tabbar/updatesview.dart';
import 'package:basic_widgets/tabbar/whatsapp_tabbar.dart';
import 'package:flutter/material.dart';

class Tabbarpage extends StatefulWidget {
  const Tabbarpage({super.key});

  @override
  State<Tabbarpage> createState() => _TabbarpageState();
}

class _TabbarpageState extends State<Tabbarpage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(children: [
          Chatsview(),
          Updatesview(),
          Communityview(),
          Callview()
        ]),
        bottomNavigationBar: TabBar(tabs: [
          Tab(
            text: "Chats",
            icon: Icon(Icons.chat),
          ),
          Tab(
            text: "Updates",
            icon: Icon(Icons.tips_and_updates),
          ),
          Tab(
            text: "Communities",
            icon: Icon(Icons.people),
          ),
          Tab(
            text: "Calls",
            icon: Icon(Icons.call),
          )
        ]),
      ),
    );
  }
}
