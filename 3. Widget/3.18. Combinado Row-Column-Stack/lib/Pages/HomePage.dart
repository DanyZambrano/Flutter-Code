import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets/Widgets/ColumnWidget.dart';
import 'package:flutter_widgets/Widgets/RowWidget.dart';
import 'package:flutter_widgets/Widgets/StackWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Stack_Widget(),
                Row(
                  children: [
                    Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(color: Colors.amberAccent),
                        child: const ColumnWidget(),
                    ),
                    Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(color: Colors.blueAccent),
                        child: const RowWidget(),
                    ),
                  ],
                ),
            ],
          )
        ),
    );
  }

}
