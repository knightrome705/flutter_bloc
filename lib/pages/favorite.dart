import 'package:flutter/material.dart';

import 'cust_widget/cust_news.dart';
class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Favoriteorite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index) {
            return  cust_news(description: "Mafjdk",heading: "djsf",);
          }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10,);
        }, itemCount: 20,
        )
    );
  }
}
