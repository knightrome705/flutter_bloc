import 'package:flutter/material.dart';
import 'package:untitled7/pages/saved_news.dart';

import 'favorite.dart';
import 'homescreen.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int index=0;
  List pages=[const Home(),const Favorite(),const Saved()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.access_time_filled_outlined),
              label: "news"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.favorite),
              label: "favorite"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.save),
              label: "saved"
          ),
        ],
      ),
    );
  }
}
