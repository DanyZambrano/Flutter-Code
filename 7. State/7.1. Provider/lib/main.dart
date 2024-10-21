import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:flutter_widgets/Providers/CounterProvider.dart';
import 'package:flutter_widgets/Providers/UserProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
