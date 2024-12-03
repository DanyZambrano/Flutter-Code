import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/TextWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center (
            child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 60),
                      child: TextWidget()
                    ),
                    const TextWidget(),
                    const Spacer(),
                     Container(
                      color: Colors.blue,
                      padding: EdgeInsets.only(top: 30, bottom: 90),
                      margin: EdgeInsets.all(50),
                      child: const TextWidget()
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
            ),
          ),
      ),
    );
  }
}
