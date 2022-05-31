import 'package:book_net/pojo/news/base_news_pojo.dart';
import 'package:book_net/routes/app_routes.dart';
import 'package:book_net/view_models/user/curr_user.dart';
import 'package:book_net/views/home_screen/home_screen.dart';
import 'package:book_net/views/launch_screen.dart/launch_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    // Use for UI testing
    CurrUserData().setUser(userTestModel);

    return ScreenUtilInit(
      designSize: const Size(360, 720),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes().onGenerateRoute,
        initialRoute: SplashScreen.id,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: child,
      ),
      // child: const SplashScreen(),
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
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
