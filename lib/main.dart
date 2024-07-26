import 'package:basic_widgets/Task%20ui/project.dart';
import 'package:flutter/material.dart';

import 'Fluttertoast.dart';
import 'listview_types/listview_builder.dart';
import 'listview_types/listviewseparator.dart';
import 'listviewex/foodmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, brightness: Brightness.light),
          useMaterial3: true),
      home: Foodmenu(),
    );
  }
}
