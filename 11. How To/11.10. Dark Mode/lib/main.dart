import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:flutter_widgets/Theme/ThemeApp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
