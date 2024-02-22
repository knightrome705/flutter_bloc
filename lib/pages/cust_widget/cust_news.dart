import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_colors.dart';

import '../../utils/app_style.dart';
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
                color: shadow,
                offset: const Offset(4.0,4.0),

            ),
             BoxShadow(
                color: white,
                offset: const Offset(-4.0,-4.0),
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
                SizedBox(height:50,width:300,child: Text(heading,overflow:TextOverflow.ellipsis,style: Style.newsheading,)),
                SizedBox(height:20,width:300,child: Text(description,overflow: TextOverflow.ellipsis,))
              ],
            ),
            ],
        ),
      ),
    );
  }
}
