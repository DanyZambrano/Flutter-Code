import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/ListTileWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: SafeArea(
              child: Center (
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTileWidget(),
                      ],
                ),
              )
            ),
        );
  }
}
