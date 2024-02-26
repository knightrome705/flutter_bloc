import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/utils/app_style.dart';
import 'package:untitled7/utils/common_toat.dart';

import '../isar_database/news.dart';
import '../isar_database/news_database.dart';
import 'cust_widget/cust_news.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  void readNews() {
    setState(() {
      context.watch<NewsDatabase>().fetchNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    final newsDatabase = context.read<NewsDatabase>();
    List<News> currentNews = newsDatabase.currentNews;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          title: Text("Saved", style: Style.heading1),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final news = currentNews[index];
            return cust_news(
              heading: news.title,
              description: news.title,
              widget: IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    context.read<NewsDatabase>().deleteNews(news.id);
                  });
                  commonToast("remove from saved");
                },
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: currentNews.length,
        ));
  }
}
