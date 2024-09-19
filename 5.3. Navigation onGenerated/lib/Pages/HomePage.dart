import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
            ),
            body: SafeArea(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ROUTE_LOGIN);
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              )
            ),
        );
  }
}
