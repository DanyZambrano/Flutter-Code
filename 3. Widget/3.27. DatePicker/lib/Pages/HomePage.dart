import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/DatePickerCustomWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center (
          child: DatePickerCustomWidget()
        ),
      )
    );
  }
}