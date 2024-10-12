import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_widgets/generated/l10n.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales, //Toma el idioma del dispositivo
      routerConfig: router,
    );
  }
}
