import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';
import 'package:flutter_widgets/Pages/LoginPage.dart';
import 'package:flutter_widgets/Pages/PerfilPage.dart';

const String ROUTE_HOME = "/";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PERFIL = "/perfil";

class Routers {
  static Route<dynamic>generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/perfil":
        return MaterialPageRoute(builder: (_) => const PerfilPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
