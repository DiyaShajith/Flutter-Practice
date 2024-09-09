import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class Catapi extends StatefulWidget {
  const Catapi({super.key});

  @override
  State<Catapi> createState() => _CatapiState();
}

class _CatapiState extends State<Catapi> {
  List<dynamic> data=[];
  @override
  void initState() {
    getDogs();
  }
  Future getDogs()async{
    final response = await http.get(Uri.parse("https://api.thecatapi.com/v1/images/search?limit=10"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Calling"),),
      body: Column(
        children: [
          Expanded(
            child: data.isEmpty?CircularProgressIndicator():ListView.builder(itemCount:data.length,itemBuilder:(context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(elevation: 10,
                child: Container(
                  width: 300,
                  height:200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(data[index]["url"]),fit: BoxFit.cover)
                  ),
                ),
              ),
            ),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:getDogs,child: Icon(Icons.refresh),),
    );
  }
}