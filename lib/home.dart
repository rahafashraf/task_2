import 'package:flutter/material.dart';

import 'constants/ui_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Task 1",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: UiConstants.navItems[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: UiConstants.navItems
            .map(
              (e) =>
              BottomNavigationBarItem(icon: Icon(e.icon), label: e.label),
        )
            .toList(),
      ),
    );
  }
}