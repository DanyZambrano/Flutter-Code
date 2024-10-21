import 'package:flutter_widgets/Pages/Page3.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';
import 'package:flutter_widgets/Pages/Page1.dart';
import 'package:flutter_widgets/Pages/Page2.dart';

const String ROUTE_HOME = "/";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PERFIL = "/perfil";
const String ROUTE_SETTING = "/setting";

final GoRouter router = GoRouter(
    initialLocation: '/',

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
          return const Page1();
        },
      ),
      GoRoute(
        path: ROUTE_PERFIL,
        builder: (context, state) {
          return const Page2();
        },
      ),
      GoRoute(
        path: ROUTE_SETTING,
        builder: (context, state) {
          return Page3();
        },
      ),
    ],
);
