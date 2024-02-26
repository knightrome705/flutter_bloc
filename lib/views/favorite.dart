import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/views/detailed_view.dart';
import 'package:untitled7/utils/app_style.dart';
import '../controller/fav_news_cubit/news_cubit.dart';
import '../data/news_data/news_api_service.dart';
import 'cust_widget/cust_news.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NewsCubit(newsApiService: NewsApiService.create())..fetch(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Favorites",
            style: Style.heading1,
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            BlocBuilder<NewsCubit, NewsState>(
              // bloc: NewsCubit..fetch,
              builder: (context, state) {
                return state.when(
                    initial: () => const SizedBox(),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (newsList) => Expanded(
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Details(
                                      title: newsList.articles[index].title
                                          .toString(),
                                      image: newsList.articles[index].urlToImage
                                          .toString(),
                                      description: newsList
                                          .articles[index].description
                                          .toString(),
                                      author: newsList.articles[index].author
                                          .toString(),
                                      content: newsList.articles[index].content
                                          .toString(),
                                      publishedAt: newsList
                                          .articles[index].publishedAt
                                          .toString(),
                                      url: newsList.articles[index].url
                                          .toString(),
                                    ),
                                  ));
                                },
                                child: cust_news(
                                  heading:
                                      newsList.articles[index].title.toString(),
                                  description: newsList.articles[index].author
                                      .toString(),
                                  widget: const SizedBox(),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 10),
                            itemCount: newsList.articles.length,
                          ),
                        ),
                    error: () => const Center(
                          child: Text("error"),
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
