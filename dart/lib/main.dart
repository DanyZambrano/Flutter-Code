import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Palabras Random',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue.shade700,
            brightness: Brightness.light,
            primary: Colors.blue.shade700,
            onPrimary: Colors.white,
            secondary: Colors.blue.shade300,
            onSecondary: Colors.white,
            surface: Colors.white,
            onSurface: Colors.blue.shade900,
            primaryContainer: Colors.blue.shade50,
            onPrimaryContainer: Colors.blue.shade900,
          ),
          scaffoldBackgroundColor: const Color(0xFFE3EAF2),
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
              color: Color(0xFF1565C0),
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
            bodyMedium: TextStyle(color: Color(0xFF1565C0), fontSize: 18),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}
