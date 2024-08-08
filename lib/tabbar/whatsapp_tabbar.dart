import 'package:flutter/material.dart';

class Chatsview extends StatefulWidget {
  const Chatsview({super.key});

  @override
  State<Chatsview> createState() => _ChatsviewState();
}

class _ChatsviewState extends State<Chatsview> {
  List names = [
    "Arya",
    "Nandhu",
    "Adarsh",
    "Arun",
    "Amaya",
    "Arunima",
    "Hamna",
    "Aruna",
    "Avani",
    "Avinash"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Icon(
            Icons.qr_code_scanner_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.grey[650],
                filled: true,
                hintText: "Ask Meta AI or Search",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/man1.png"),
                  ),
                  title: Text(
                    names[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: const Text(
                    "8:20 AM",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
