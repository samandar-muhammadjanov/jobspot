import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job/screens/auth/login/login.dart';
import 'package:job/screens/home/home_screen.dart';
import 'package:job/screens/onboarding/onbaording_screen.dart';
import 'package:job/screens/onboarding/onboarding2.dart';
import 'package:job/screens/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.dmSans().fontFamily,
          primaryColor: const Color.fromRGBO(13, 1, 64, 1)),
      initialRoute: "/",
      routes: {
        "/": (_) => const SplashPage(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        OnbardingScreen.routeName: (_) => const OnbardingScreen(),
        Onboarding2.routeName : (_) => const Onboarding2()
      },
    );
  }
}