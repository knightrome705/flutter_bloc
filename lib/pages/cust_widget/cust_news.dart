import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cust_news extends StatelessWidget {
  String description,heading;
   cust_news({
    super.key,
    required this.description,required this.heading
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
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:50,width:300,child: Text(heading,overflow:TextOverflow.ellipsis,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height:20,width:300,child: Text(description,overflow: TextOverflow.ellipsis,))
              ],
            ),
            const Icon(Icons.share)],
        ),
      ),
    );
  }
}
