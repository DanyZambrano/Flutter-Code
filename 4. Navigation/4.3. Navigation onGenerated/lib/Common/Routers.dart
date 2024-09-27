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
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case ROUTE_PERFIL:
        return MaterialPageRoute(builder: (_) => const PerfilPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
