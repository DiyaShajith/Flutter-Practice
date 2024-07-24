

import 'package:flutter/material.dart';

class Listtits extends StatelessWidget {
  const Listtits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile with Border'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Add the action you want the leading button to perform here
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Add the action you want the trailing button to perform here
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: const Text('List Item 1'),
              subtitle: const Text('List item description 1'),
              leading: const Icon(Icons.rectangle),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 1 pressed!');
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: const Text('List Item 2'),
              subtitle: const Text('List item description 2'),
              leading: const Icon(Icons.circle),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 2 pressed!');
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: const Text('List Item 3'),
              subtitle: const Text('List item description 3'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 3 pressed!');
              },
            ),
          ),
        ],
      ),
    );
  }
}