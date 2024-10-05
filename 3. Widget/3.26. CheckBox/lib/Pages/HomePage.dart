import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/CheckBoxListWidget.dart';
import 'package:flutter_widgets/Widgets/CheckBoxWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CheckBoxWidget(),
                Divider(),
                CheckBoxListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
