import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/RadioListCustomWidget.dart';
import 'package:flutter_widgets/Widgets/RadioListWidget.dart';
import 'package:flutter_widgets/Widgets/RadioWidget.dart';

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
                RadioWidget(),
                Divider(),
                RadioListWidget(),
                Divider(),
                RadioListCustomWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
