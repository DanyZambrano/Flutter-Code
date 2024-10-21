import 'package:flutter/material.dart';
import 'package:flutter_widgets/Menu/BottomNavigation.dart';
import 'package:flutter_widgets/Pages/Page1.dart';
import 'package:flutter_widgets/Pages/Page2.dart';
import 'package:flutter_widgets/Pages/Page3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(voidCallback: _onItemTapped, index: selectedIndex),
      body: pages[selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

