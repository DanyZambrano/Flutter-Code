// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';
import 'package:flutter_widgets/Pages/LoginPage.dart';
import 'package:flutter_widgets/Pages/PerfilPage.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PERFIL = "/perfil";

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return PageTransition(child: const HomePage(), type: PageTransitionType.fade, duration: const Duration(seconds: 2));
      case "/login":
        return PageTransition(child: const LoginPage(), type: PageTransitionType.fade);
      case "/perfil":
        return PageTransition(child: const PerfilPage(), type: PageTransitionType.fade);
      default:
        return PageTransition(child: const HomePage(), type: PageTransitionType.fade);
    }
  }
}
