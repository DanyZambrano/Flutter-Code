import 'package:flutter/material.dart';

typedef VoidCallback = Function(int index);

class BottomNavigation extends StatelessWidget {
  VoidCallback voidCallback;
  int index = 0;
  BottomNavigation(
      {super.key, required this.voidCallback, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: voidCallback,
      backgroundColor: Colors.blue,
      iconSize: 30,
      selectedFontSize: 10,
      selectedIconTheme: const IconThemeData(color: Colors.white, size: 30),
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold, 
        fontSize: 20, 
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: "Page1",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Page2",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Page3",
        ),
      ]
    );
  }
}
