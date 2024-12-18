import 'package:basic_widgets/api_calling/catapi.dart';
import 'package:basic_widgets/api_calling/dog_api.dart';
import 'package:basic_widgets/api_calling/register_api.dart';
import 'package:basic_widgets/api_calling/news_api.dart';
import 'package:basic_widgets/api_calling/reqrs.dart';
import 'package:basic_widgets/counter_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple, brightness: Brightness.dark),
            useMaterial3: true),
        home: p(),
      ),
    );
  }
}
