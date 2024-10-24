import 'package:flutter_widgets/Pages/SettingPage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_widgets/Pages/InvoicePage.dart';
import 'package:flutter_widgets/Pages/ReportPage.dart';
import 'package:flutter_widgets/Pages/ProfilePage.dart';

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
          return const InvoicePage();
        },
      ),
      GoRoute(
        path: ROUTE_LOGIN,
        builder: (context, state) {
          return const ReportPage();
        },
      ),
      GoRoute(
        path: ROUTE_PERFIL,
        builder: (context, state) {
          return const ProfilePage();
        },
      ),
      GoRoute(
        path: ROUTE_SETTING,
        builder: (context, state) {
          return const SettingPage();
        },
      ),
    ],
);
