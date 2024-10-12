import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/CardBaseWidget.dart';
import 'package:flutter_widgets/Widgets/GridViewDynamicWidget.dart';
import 'package:flutter_widgets/Widgets/ListViewWidget.dart';
import 'package:sizer/sizer.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 450, child: ListViewWidget()),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Device.screenType == ScreenType.tablet
                  ? Row(children: [
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: GridViewDynamicWidget()),
                          Device.orientation == Orientation.portrait
                            ? SizedBox(
                              height: 400, 
                              width: 400, 
                              child: CardBaseWidget())
                            : SizedBox.shrink()
                      
                    ])
                  : Column(children: [
                      SizedBox(
                          height: 200,
                          width: 200,
                          child: GridViewDynamicWidget()),
                      SizedBox(
                          height: 200, 
                          width: 200, 
                          child: CardBaseWidget()),
                    ]),
            ),
          ],
        ),
      ),
    ));
  }
}
