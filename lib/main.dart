import 'package:basic_widgets/animation/animatedcontainer.dart';
import 'package:basic_widgets/animation/animationview.dart';
import 'package:basic_widgets/animation/implictanimation.dart';
import 'package:basic_widgets/animation/textanimated.dart';
import 'package:basic_widgets/url_launcher/urlview.dart';
import 'package:flutter/material.dart';

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
              seedColor: Colors.deepPurple, brightness: Brightness.dark),
          useMaterial3: true),
      home: const TextAnimated(),
    );
  }
}
