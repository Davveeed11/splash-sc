import 'package:flutter/material.dart';
import 'package:splash_sc/pages/calls.dart';
import 'package:splash_sc/pages/chat.dart';
import 'package:splash_sc/pages/communities.dart';
import 'package:splash_sc/pages/statues.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  void updateIndex(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_currentindex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(
            221,
            8,
            8,
            8,
          ),
        ),
        child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            currentIndex: _currentindex,
            onTap: updateIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                label: 'Chats',
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                label: 'Updates',
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people_outline_sharp,
                    color: Colors.white,
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  label: 'Communities'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call_sharp,
                  color: Colors.white,
                ),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                label: 'Calls',
              ),
            ]),
      ),
    );
  }
}

List page = [
  const Chat(),
  const Statues(),
  const Communities(),
  const Calls(),
];
