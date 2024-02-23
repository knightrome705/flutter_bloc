import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/isar/news.dart';
import 'package:untitled7/isar/news_database.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/utils/app_style.dart';

import 'cust_widget/cust_news.dart';
class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  void readNews(){
    setState(() {
      context.watch<NewsDatabase>().fetchNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    final newsDatabase=context.read<NewsDatabase>();
    List<News> currentNews=newsDatabase.currentNews;
    print(currentNews);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          title:  Text("Favorite",style: Style.heading1),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index) {
            final news=currentNews[index];
            print(news);
            return  cust_news(heading: news.title,description: news.title,widget: Icon(Icons.delete,color: Colors.red,),);
          }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10,);
        }, itemCount: currentNews.length,
        )
    );
  }
}
