import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:untitled7/routes/name_routes.dart';
import 'package:untitled7/routes/routes.dart';
import 'controller/theme_cubit/theme_cubit.dart';
import 'isar_database/news_database.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NewsDatabase.initialize();
  runApp(ChangeNotifierProvider(create: (context) => NewsDatabase(),child: const MyApp(),));
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
            initialRoute: RouteName.login,
            onGenerateRoute: Routes.generateRoute,
          );
        },
      ),
    );
  }
}
