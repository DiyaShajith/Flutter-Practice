
import 'package:flutter/material.dart';

class TextfieldButton extends StatefulWidget {
  const TextfieldButton({super.key});

  @override
  State<TextfieldButton> createState() => _TextfieldButtonState();
}

class _TextfieldButtonState extends State<TextfieldButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        title: const Text(
          'Write',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 625, top: 10),
              child: Text(
                'Easy Job Application.Please fill out the form accordingly.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1270),
              child: Text(
                '* Required field - Name',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  filled: true,
                  fillColor: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1255),
              child: Text(
                '* Required field - ID Photo',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Container(
              height: 50,
              width: 1500,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'UPLOAD IMAGES',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1225),
              child: Text(
                '* Required field - Date of Birth',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Date of Birth',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  fillColor: Colors.grey,
                  filled: true),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1255),
              child: Text(
                '* Required field - Address',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 1500,
              height: 200,
              color: Colors.grey,
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'FIND ADDRESS',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Address line 1',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          filled: true,
                          fillColor: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Address line 2',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          fillColor: Colors.grey,
                          filled: true),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1265),
              child: Text(
                '* Required field - Gender',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Male',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  filled: true,
                  fillColor: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1210),
              child: Text(
                '* Required field - Phone Number',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  fillColor: Colors.grey,
                  filled: true),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1265),
              child: Text(
                '* Required fields - Skills',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  filled: true,
                  fillColor: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1180),
              child: Text(
                '* Required field - Educational History',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  fillColor: Colors.grey,
                  filled: true),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 1180),
              child: Text(
                '* Required field - Career Introduction',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  filled: true,
                  fillColor: Colors.grey),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 1500,
                color: Colors.black,
                child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_circle_up_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.verified_outlined,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
