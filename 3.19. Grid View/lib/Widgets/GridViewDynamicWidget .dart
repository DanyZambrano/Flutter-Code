import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/ContainerWidget.dart';

class GridViewDynamicWidget  extends StatelessWidget {
  const GridViewDynamicWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        crossAxisSpacing: 50,
        mainAxisSpacing: 50
      ),
      //physics: const NeverScrollableScrollPhysics(), //Para el principal scroll
      itemCount: 50,
      itemBuilder: (context, index) => const ContainerWidget(),
    );
  }
}
