import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/cubit/news_cubit.dart';
import 'package:untitled7/pages/settings.dart';
import '../data/news_api_service.dart';
import 'cust_widget/cust_news.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => NewsCubit(
    newsApiService:NewsApiService.create()
  )..fetch(),
  child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 130),
        child: AppBar(
          title: const Text(
            "News.live",
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("GoodMorning, Martin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                      "99c",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settings()));
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          BlocBuilder<NewsCubit,NewsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (newsList) => Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return cust_news(
                        heading: "null",
                        description: "null"
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
                    itemCount: 3,
                  ),
                ), Error: ()=>const Center(child: Text("error"),)
              );
            },
          )
        ],
      ),
    ),
);
  }
}
