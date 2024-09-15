import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/ErrorPage.dart';
import 'package:flutter_widgets/Pages/SettingPage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';
import 'package:flutter_widgets/Pages/LoginPage.dart';
import 'package:flutter_widgets/Pages/PerfilPage.dart';

const String ROUTE_HOME = "/";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PERFIL = "/perfil";
const String ROUTE_SETTING = "/setting";

final GoRouter router = GoRouter(
    initialLocation: '/',
    /*redirect: (context, state) {
    const isNew = true;
    const isLogged = true;
    if (isNew) {
      return '/onboarding';
    }
  },*/
    routes: <RouteBase>[
      GoRoute(
        path: ROUTE_HOME,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: ROUTE_LOGIN,
        builder: (context, state) {
          return const LoginPage();
        },
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const LoginPage(),
            transitionDuration: const Duration(milliseconds: 900),
            reverseTransitionDuration: const Duration(milliseconds: 2000),
            barrierColor: Colors.lightBlueAccent,
            barrierDismissible: true,
            opaque: false,
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(opacity: animation, child: child);
              //return FadeTransition(opacity: CurveTween(curve: Curves.bounceInOut).animate(animation), child: child);
            },
          );
        },
      ),
      GoRoute(
        path: "$ROUTE_PERFIL/:userId",
        builder: (context, state) {
          final id = state.pathParameters['userId'] ?? "";
          return PerfilPage(userId: id);
        },
      ),
      GoRoute(
        path: ROUTE_SETTING,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final nombre = extra['planeta'] ?? '';
          final edad = extra['edad'] ?? 0;
          return SettingPage(nombre: nombre, edad: edad);
        },
      ),
    ],
    errorBuilder: (context, state) {
      return const Errorpage();
    });
