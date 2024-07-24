import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepickerex extends StatefulWidget {
  const Imagepickerex({super.key});

  @override
  State<Imagepickerex> createState() => _ImagepickerexState();
}

class _ImagepickerexState extends State<Imagepickerex> {
  File? _image;
  void cameracapture()
  async{
    final picker= ImagePicker();
    final pickedimage=await picker.pickImage(source: ImageSource.camera);
    if(pickedimage!=null){
      setState(() {
        _image=File(pickedimage.path);
      });
    }

  }
  void imagecapture()
  async{
    final picker= ImagePicker();
    final pickedimage=await picker.pickImage(source: ImageSource.gallery);
    if(pickedimage!=null){
      setState(() {
        _image=File(pickedimage.path);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: _image==null?const Text(
            "Not Selected Image Yet!!!",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20),
          ):Image.file(_image!)
        ),
      )),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: imagecapture,
            child: const Icon(
              Icons.image,
              color: Colors.white,
            ),
          ),const SizedBox(width: 15,),
          FloatingActionButton(
            onPressed: cameracapture,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
