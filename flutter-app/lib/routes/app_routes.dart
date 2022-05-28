import 'package:book_net/views/login_screen/login_screen.dart';
import 'package:book_net/views/main.dart';
import 'package:book_net/views/signup_screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final AppRoutes _singleton = AppRoutes._internal();

  factory AppRoutes() {
    return _singleton;
  }

  AppRoutes._internal();
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case ExampleScreen.id:
      //   return CupertinoPageRoute(
      //     settings: settings,
      //     builder: (_) => ChangeNotifierProvider(
      //       create: (BuildContext context) => ReportProblemProvider(),
      //       child: ExampleScreen(),
      //     ),
      //   );

      case SignUpScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const SignUpScreen(),
        );
      case LoginScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      case SplashScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}
