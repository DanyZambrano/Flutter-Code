import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Column 1"),
                    Text("Column 2"),
                    Text("Column 3"),
                    Text("Column 4"),
                    Text("Column 5"),
                    Text("Column 6"),
                    Text("Column 7"),
                    Text("Column 8"),
                    Text("Column 9"),
                    Text("Column 1"),
                    Text("Column 2"),
                    Text("Column 3"),
                    Text("Column 4"),
                    Text("Column 5"),
                    Text("Column 6"),
                    Text("Column 7"),
                    Text("Column 8"),
                    Text("Column 9"),
                  ],
            ),
          ),
        ],
    );
  }
}
