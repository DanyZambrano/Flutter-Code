import 'package:flutter/material.dart';

class CardBaseWidget extends StatelessWidget {
  const CardBaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: 400,
        height: 600,
        child: InkWell(
          onTap: () {
            debugPrint("hey Card..");
          },
          child: Card(
              color: Colors.blue,
              elevation: 10,
              margin: const EdgeInsets.all(16.0),
              borderOnForeground: false,
              clipBehavior: Clip.antiAlias,
              semanticContainer: true,
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  "Es un Card!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40
                  ),
                ),
              ),
          ),
        ),
    );
  }
}
