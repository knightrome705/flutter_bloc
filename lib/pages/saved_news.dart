import 'package:flutter/material.dart';

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
          backgroundColor: Colors.orange,
          title: const Text("Saved",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index) {
            return const cust_news();
          }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10,);
        }, itemCount: 20,
        )
    );
  }
}
