import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/cubit/news_cubit.dart';
import 'package:untitled7/pages/login.dart';

import 'data/news_api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit(NewsApiService()),
        child: const MaterialApp(home: Login(),));
  }
}
