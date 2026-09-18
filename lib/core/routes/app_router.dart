import 'package:flutter/material.dart';
import 'package:send_log/core/routes/app_routes.dart';
import 'package:send_log/featuers/home/presentation/view/home_view.dart';
import 'package:send_log/featuers/login/presentation/view/login_view.dart';

/// Maps route names -> screens.
///
/// Only the router knows about screen widgets; the rest of the app just
/// calls `Navigator.pushNamed(context, AppRoutes.xxx)`.
class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginView());

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
