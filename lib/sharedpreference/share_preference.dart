import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreference extends StatefulWidget {
  const SharePreference({super.key});

  @override
  State<SharePreference> createState() => _SharePreferenceState();
}

class _SharePreferenceState extends State<SharePreference> {
  String _username = "";
  bool _rememberme = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadPreferences();
  }

  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString("username") ?? "";
      _rememberme = prefs.getBool("rememberMe") ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Shared Preferences",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
              decoration: const InputDecoration(
                  hintText: "Enter your username",
                  label: Text(
                    "Username",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              child: SwitchListTile(
                value: _rememberme,
                onChanged: (value) {
                  setState(() {
                    _rememberme = value;
                  });
                },
                title: const Text(
                  "Remember me",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your username is $_username",
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Center(
              child: OutlinedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString("username", _username);
                    prefs.setBool("rememberMe", _rememberme);
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
