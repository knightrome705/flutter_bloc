import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/routes/name_routes.dart';
import 'package:untitled7/views/botton_nav.dart';
import 'package:untitled7/views/category.dart';
import 'package:untitled7/views/defaultpage.dart';
import 'package:untitled7/views/favorite.dart';
import 'package:untitled7/views/homescreen.dart';
import 'package:untitled7/views/login.dart';
import 'package:untitled7/views/onboarding.dart';
import 'package:untitled7/views/saved_news.dart';
import 'package:untitled7/views/settings.dart';

import '../views/userlocarion.dart';

class Routes{
static Route<dynamic> generateRoute(RouteSettings settings){
switch(settings.name){
  case RouteName.login:
    return MaterialPageRoute(builder: (context) => const Login(),);
  case RouteName.homescreen:
    return MaterialPageRoute(builder: (context) => const Home(),);
  case RouteName.bottom:
    return MaterialPageRoute(builder: (context) => const Bottom_Nav(),);
  case RouteName.saved:
    return MaterialPageRoute(builder: (context) => const Saved(),);
  case RouteName.favorite:
    return MaterialPageRoute(builder: (context) => const Favorites(),);
  case RouteName.settings:
    return MaterialPageRoute(builder: (context) => const Settings(),);
  case RouteName.category:
    return MaterialPageRoute(builder: (context) => const Categories(),);
  case RouteName.location:
    return MaterialPageRoute(builder: (context) => const UserLocation(),);
  case RouteName.favorite:
    return MaterialPageRoute(builder: (context) => const Favorites(),);
  case RouteName.onboardingscreen:
    return MaterialPageRoute(builder: (context) => const Onboarding(),);
  default:
    return MaterialPageRoute(builder: (context) => const DefaultPage(),);

}
}


}