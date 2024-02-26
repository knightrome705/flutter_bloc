import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/data/wheather_data/wheather_api_service.dart';
import 'package:untitled7/routes/name_routes.dart';
import 'package:untitled7/views/detailed_view.dart';
import 'package:untitled7/utils/app_style.dart';
import '../controller/news_cubit/newsdata_cubit.dart';
import '../controller/wheather_cubit/wheather_cubit.dart';
import '../data/news_data/news_api_service.dart';
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
  getUser() async {
    SharedPreferences user = await SharedPreferences.getInstance();
    setState(() {
      name = user.getString("name")?.toUpperCase();
    });
  }

  var greeting;
  wishes() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = 'Good morning';
    } else if (hour < 18) {
      greeting = 'Good afternoon';
    } else {
      greeting = 'Good evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    getUser();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          NewsdataCubit(newsApiService: NewsApiService.create())..fetch(),
        ),
        BlocProvider(
          create: (context) =>
          WheatherCubit(wheatherApiService: WheatherApiService.create())
            ..fetch(), 
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          centerTitle: true,
          title: Text(
            "News.live",
            style: Style.heading1,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
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
                      Text("$greeting, $name",
                          style: Style.subtitle1.copyWith(fontSize: 20)),
                      BlocBuilder<WheatherCubit, WheatherState>(
                        builder: (context, state) {
                          return state.when(
                            initial: ()=>const SizedBox(),
                           loaded: (data) {
                             final temperatureCelsius = data.current.temp_c.toString();
                              return Text("Temp:$temperatureCelsius°c",style: Style.temp,);
                              },
                            loading: () =>const CircularProgressIndicator(),
                          );
                        },
                      ),
                      Image.asset("assests/thermometer.png",height: 50,)
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      color: white,
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.settings);
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            BlocBuilder<NewsdataCubit, NewsdataState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (newsList) => Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Details(
                                title: newsList.articles[index].title.toString(),
                                image: newsList.articles[index].urlToImage.toString(),
                                description: newsList.articles[index].description.toString(),
                                author: newsList.articles[index].author.toString(),
                                content: newsList.articles[index].content.toString(),
                                publishedAt: newsList.articles[index].publishedAt.toString(),
                                url: newsList.articles[index].url.toString(),
                              ),
                            ));
                          },
                          child: cust_news(
                            heading: newsList.articles[index].title.toString(),
                            description: newsList.articles[index].author.toString(),
                            widget: const SizedBox(),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
                      itemCount: newsList.articles.length,
                    ),
                  ),
                  error: () => const Center(
                    child: Text("error"),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
