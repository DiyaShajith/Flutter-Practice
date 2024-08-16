import 'package:basic_widgets/sharedpreference/share_preference.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String _username = "";
  String _email = "";
  @override
  void initState() {
    super.initState();
    _userProfile();
  }

  void _userProfile() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      _username = pref.getString("username") ?? "";
      _email = pref.getString("email") ?? "";
    });
  }

  void _saveProfile() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      (pref.setString("username", _username));
      (pref.setString("email", _email));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleAvatar(backgroundImage: AssetImage("assets/girl (1).png"))
        ],
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (value) {
              _username = value;
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                label: Text(
                  "Enter your Name",
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (value) {
              _email = value;
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                label: Text(
                  "Enter your email",
                )),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  _saveProfile();
                },
                child: const Text("Save")),
          ),
          Text("Name $_username"),
          Text("Email $_email")
        ],
      ),
    );
  }
}
