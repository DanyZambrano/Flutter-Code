import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(" Row 1 "),
                    Text(" Row 2 "),
                    Text(" Row 3 "),
                    Text(" Row 4 "),
                    Text(" Row 5 "),
                    Text(" Row 6 "),
                    Text(" Row 7 "),
                    Text(" Row 8 "),
                    Text(" Row 9 "),
                  ],
            ),
          ),
        ],
    );
  }
}
