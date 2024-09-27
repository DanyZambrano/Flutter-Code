import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/RoutersArg.dart';
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
      case ROUTE_HOME:
        return PageTransition(child: const HomePage(), type: PageTransitionType.fade);
      case ROUTE_LOGIN:
        return PageTransition(child: const LoginPage(), type: PageTransitionType.fade);
      case ROUTE_PERFIL:
        final args = settings.arguments as RoutersArg;
        return PageTransition(child: PerfilPage(titulo: args.titulo, mensaje: args.mensaje), type: PageTransitionType.fade);
      default:
        return PageTransition(child: const HomePage(), type: PageTransitionType.fade);
    }
  }
}
