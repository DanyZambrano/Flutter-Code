import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/GridViewDynamicWidget%20.dart';
import 'package:flutter_widgets/Widgets/GridViewWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: GridViewDynamicWidget(),
          //GridViewWidget(),
        ),
    );
  }
}
