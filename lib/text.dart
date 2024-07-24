import 'package:flutter/material.dart';

class Texts extends StatefulWidget {
  const Texts({super.key});

  @override
  State<Texts> createState() => _TextsState();
}

class _TextsState extends State<Texts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BIODATA'),centerTitle: true,),
      body:const Center(child: Text('Name: Diya Shajith K\nGuardian Name: Rakhi MP\nPlace: Kozhikode\nAge: 23\nGender: Female\nDOB: 22-03-2002\nQualification: MCA\nContact No: 9567403045',style: TextStyle(color: Colors.black,fontSize: 20),)) ,
    );
  }
}
