import 'package:book_net/views/launch_screen.dart/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const BookNetApp());
}

class BookNetApp extends StatelessWidget {
  const BookNetApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return MultiBlocProvider(
  //       // create: (context) => CounterCubit(),
  //       providers: [
  //         // BlocProvider<AuthenticationBloc>(
  //         //   create: (context) => AuthenticationBloc(),
  //         // ),
  //       ],
  //       child: MaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         title: 'Flutter Demo',
  //         theme: ThemeData(
  //           visualDensity: VisualDensity.adaptivePlatformDensity,
  //         ),
  //         home: LoginScreen(),
  //       ));
  // }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      builder: (child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes().onGenerateRoute,
        initialRoute: SplashScreen.id,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);
  static const String id = 'splash';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/LOGO.png'),
      nextScreen: const LaunchScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
