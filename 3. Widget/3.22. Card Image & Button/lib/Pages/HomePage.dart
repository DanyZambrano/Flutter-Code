import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/CardBaseWidget.dart';
import 'package:flutter_widgets/Widgets/CardButtonWidget.dart';
import 'package:flutter_widgets/Widgets/CardImageWidget.dart';
import 'package:flutter_widgets/Widgets/CardWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: SafeArea(
              child: Center (
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CardButtonWidget(),
                          CardWidget(),
                          CardBaseWidget(),
                          CardImageWidget(),
                        ],
                  ),
                ),
              )
            ),
        );
  }
}
