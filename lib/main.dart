import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/pages/botton_nav.dart';
import 'package:untitled7/pages/category.dart';
import 'package:untitled7/pages/favorite.dart';
import 'package:untitled7/pages/homescreen.dart';
import 'package:untitled7/pages/login.dart';
import 'package:untitled7/pages/onboarding.dart';
import 'package:untitled7/pages/saved_news.dart';
import 'package:untitled7/pages/settings.dart';
import 'package:untitled7/pages/userlocarion.dart';
import 'package:untitled7/theme_cubit/theme_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const Login(),
              '/onboarding': (context) => const Onboarding(),
              '/category': (context) => const Categories(),
              '/location': (context) => const UserLocation(),
              '/home': (context) => const Home(),
              '/favorite': (context) => const Favorite(),
              '/saved': (context) => const Saved(),
              '/settings': (context) => const Settings(),
              '/bottom': (context) => const Bottom_Nav(),
            },
            initialRoute: '/onboarding',
          );
        },
      ),
    );
  }
}
