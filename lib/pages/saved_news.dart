import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/utils/app_style.dart';

import 'cust_widget/cust_news.dart';
class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          title:  Text("Saved",style: Style.heading1),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index) {
            return  cust_news(heading: "sfd",description: "dfjsnf",);
          }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10,);
        }, itemCount: 20,
        )
    );
  }
}
