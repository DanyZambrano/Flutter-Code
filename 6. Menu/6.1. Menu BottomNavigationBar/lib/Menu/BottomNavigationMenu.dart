import 'package:flutter/material.dart';

typedef VoidCallback = Function(int index);

class BottomNavigationMenu extends StatelessWidget {
  VoidCallback voidCallback;
  int index = 0;
  BottomNavigationMenu(
      {super.key, required this.voidCallback, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: voidCallback,
      backgroundColor: Colors.black45,
      elevation: 3,
      iconSize: 30,
      selectedFontSize: 10,
      selectedIconTheme:
          const IconThemeData(color: Colors.white, size: 40),
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold, 
        fontSize: 20, 
      ),
      //type: BottomNavigationBarType.shifting,
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: "Blog",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Post",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Video",
        ),
      ]
    );
  }
}
