import 'package:flutter/material.dart';
import 'package:flutter_widgets/Menu/BottomNavigationMenu.dart';
import 'package:flutter_widgets/Pages/Fragments/BlogFragment.dart';
import 'package:flutter_widgets/Pages/Fragments/PostFragment.dart';
import 'package:flutter_widgets/Pages/Fragments/VideoFragment.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List fragments = [
    const BlogFragment(),
    const PostFragment(),
    const Videofragment(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      bottomNavigationBar: BottomNavigationMenu(voidCallback: _onItemTapped, index: selectedIndex),
      appBar: const AppBarWidget(title: "Home"),
      body: fragments[selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
