import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsApi extends StatefulWidget {
  const NewsApi({super.key});

  @override
  State<NewsApi> createState() => _NewsApiState();
}

class _NewsApiState extends State<NewsApi> {
  List newslist = [];
  @override
  void initState() {
    super.initState();
    newsapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NewsAPI Calling",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: 30,
        shrinkWrap: true,
        itemBuilder: (context, index) => Card(
          child: Card(
            child: Container(
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    newslist[index]["author"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  Text(
                    newslist[index]["title"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Text(
                    newslist[index]["description"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Image(image: NetworkImage(newslist[index]["urlToImage"])),
                  Text(
                    newslist[index]["publishedAt"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    newslist[index]["content"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future newsapi() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2024-08-09&sortBy=publishedAt&apiKey=9c2645546fe5483a8a786a1fccfbf55c"));
      if (response.statusCode == 200) {
        newslist = jsonDecode(response.body)["articles"];
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
