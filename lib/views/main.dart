import 'package:book_net/views/login_screen/login_screen.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      builder: (child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: child,
      ),
      child: AnimatedSplashScreen(
        splash: Image.asset('assets/images/LOGO.png'),
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
