import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/ListViewWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: 
              ListViewWidget(),
          )
    );
  }
}
