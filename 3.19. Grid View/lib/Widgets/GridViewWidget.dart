import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/ContainerWidget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      /*gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),*/
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 25,
        mainAxisSpacing: 50
      ),
      //physics: const NeverScrollableScrollPhysics(), //Para el principal scroll
      children: const [
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),
        ContainerWidget(),

      ],
    );
  }
}
