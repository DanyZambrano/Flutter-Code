import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/SwitchListTileWidget.dart';
import 'package:flutter_widgets/Widgets/SwitchWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: Center (
            child: Column(
              children: [
                SwitchWidget(),
                Divider(),
                SwitchListTileWidget(),
              ], 
            ),
          )
        ),
    );
  }
}
