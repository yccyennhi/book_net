import 'package:book_net/main.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/view_models/authentication_bloc/login_bloc.dart';
import 'package:book_net/view_models/create_news_bloc/create_news_bloc.dart';
import 'package:book_net/views/carousel_screen/carousel_screen.dart';
import 'package:book_net/views/change_password_screen/change_password_screen.dart';
import 'package:book_net/views/forgot_password_screen/forgot_password_screen.dart';
import 'package:book_net/views/home_screen/bookshelf_screen/bookshelf_screen.dart';
import 'package:book_net/views/home_screen/create_news_screen/create_news_screen.dart';
import 'package:book_net/views/home_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:book_net/views/home_screen/edit_profile_screen/widget/edit_screen.dart';
import 'package:book_net/views/home_screen/home_screen.dart';
import 'package:book_net/views/home_screen/news_detail_screen/news_detail_screen.dart';
import 'package:book_net/views/launch_screen.dart/launch_screen.dart';
import 'package:book_net/views/login_screen/choose_login_type.dart';
import 'package:book_net/views/login_screen/login_screen.dart';
import 'package:book_net/views/setup_screen/setup_screen.dart';
import 'package:book_net/views/signup_screen/signup_screen.dart';
import 'package:book_net/views/verify_screen/verify_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      case HomeScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
        );
      case SignUpScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => const SignUpScreen(),
        );
      case LoginScreen.id:
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (context) => LogInBloc(),
            child: const LoginScreen(),
          ),
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
      case NewsDetailScreen.id:
        final args = settings.arguments as BaseNewsDto;
        return CupertinoPageRoute(
          settings: settings,
          builder: (_) => NewsDetailScreen(
            newsModel: args,
          ),
        );
      case CreateNewsScreen.id:
        return CupertinoPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                create: (context) => CreateNewsBloc(),
                child: const CreateNewsScreen()));
      case EditProfileScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const EditProfileScreen());
      case ForgotPasswordScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const ForgotPasswordScreen());
      case ChangePasswordScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const ChangePasswordScreen());
      case EditScreen.id:
        final String value = settings.arguments as String;
        return CupertinoPageRoute(
            settings: settings, builder: (_) => EditScreen(type: value));
      case BookShelfScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const BookShelfScreen());
      case VerifyScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const VerifyScreen());
      case SetupScreen.id:
        return CupertinoPageRoute(
            settings: settings, builder: (_) => const SetupScreen());

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
