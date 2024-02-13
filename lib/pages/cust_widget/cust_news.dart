import 'package:flutter/material.dart';
class cust_news extends StatelessWidget {
  const cust_news({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(4.0,4.0),
                blurRadius: 15,
                spreadRadius: 1
            ),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0,-4.0),
                blurRadius: 15,
                spreadRadius: 1
            )
          ]

      ),
      child:const Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("News Heading",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("today")
              ],
            ),
            Icon(Icons.share)],
        ),
      ),
    );
  }
}
