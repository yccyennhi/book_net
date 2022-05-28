import 'package:book_net/views/carousel_screen/carousel_screen.dart';
import 'package:book_net/views/launch_screen.dart/launch_screen.dart';
import 'package:book_net/views/login_screen/choose_login_type.dart';
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
      case LaunchScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const LaunchScreen(),
        );
      case LoginTypeScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const LoginTypeScreen(),
        );
      case CarouselScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const CarouselScreen(),
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
