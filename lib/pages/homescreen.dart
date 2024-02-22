import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/pages/detailed_view.dart';
import 'package:untitled7/utils/app_style.dart';
import '../cubit_news/news_cubit.dart';
import '../news_data/news_api_service.dart';
import '../utils/app_colors.dart';
import 'cust_widget/cust_news.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getUser();
    wishes();
    super.initState();
  }
  var name;
  getUser()async{
    SharedPreferences user=await SharedPreferences.getInstance();
       setState(() {
         name=user.getString("name")?.toUpperCase();
       });
     print(name);
  }
  var greeting;
  wishes(){
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = 'Good morning';
    } else if (hour < 18) {
      greeting = 'Good afternoon';
    } else {
      greeting = 'Good evening';
    }
    print(greeting);
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => NewsCubit(
    newsApiService:NewsApiService.create()
  )..fetch(),
  child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        centerTitle: true,
        title:  Text(
          "News.live",
          style:Style.heading1,
        ),
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            gradient: LinearGradient(colors: [secondary, primary]),
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
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$greeting, $name", style: Style.subtitle1.copyWith(fontSize: 20)),
                    const Text(
                      "99c",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    color: white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          BlocBuilder<NewsCubit,NewsState>(
            // bloc: NewsCubit..fetch,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (newsList) => Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(title:newsList.articles[index].title.toString(),image: newsList.articles[index].urlToImage.toString(),description: newsList.articles[index].description.toString(),author:newsList.articles[index].author.toString() ,content: newsList.articles[index].content.toString(),publishedAt: newsList.articles[index].publishedAt.toString(),url: newsList.articles[index].url.toString(),),));
                        },
                        child: cust_news(
                          heading: newsList.articles[index].title.toString(),
                          description: newsList.articles[index].author.toString()
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
                    itemCount: newsList.articles.length,
                  ),
                ), error: ()=>const Center(child: Text("error"),)
              );
            },
          )
        ],
      ),
    ),
);
  }
}
