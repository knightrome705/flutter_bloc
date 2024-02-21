import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/pages/botton_nav.dart';
import 'package:untitled7/pages/category.dart';
import 'package:untitled7/pages/favorite.dart';
import 'package:untitled7/pages/homescreen.dart';
import 'package:untitled7/pages/login.dart';
import 'package:untitled7/pages/onboarding.dart';
import 'package:untitled7/pages/saved_news.dart';
import 'package:untitled7/pages/settings.dart';
import 'package:untitled7/pages/userlocarion.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Login(),
        '/onboarding':(context) => const Onboarding(),
        '/category':(context) =>const Categories(),
        '/location':(context) => const UserLocation(),
        '/home':(context) => const Home(),
        '/favorite':(context) => const Favorite(),
        '/saved':(context) => const Saved(),
        '/settings':(context) => const Settings(),
        '/bottom':(context) => const Bottom_Nav(),

      },
    initialRoute: '/onboarding',
    );
  }
}
