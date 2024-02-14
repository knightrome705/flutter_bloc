import 'package:flutter/material.dart';

import 'cust_widget/cust_news.dart';
class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Favorite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
