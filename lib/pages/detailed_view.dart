
import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_style.dart';
import 'package:untitled7/utils/common_toat.dart';
class Details extends StatelessWidget {
  String title,description,image,author,url,content,publishedAt;
   Details({super.key,required this.title,required this.description,required this.image,required this.author,required this.url,required this.content,required this.publishedAt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Description",style: Style.heading1),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(title,style: Style.heading2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(publishedAt),
              IconButton(onPressed: ()async{
                  try{
                    // await Share.share("martin",subject: 'any one');
                  }catch(e){
                    commonToast(e.toString());
                    print(e.toString());
                  }
              },icon: const Icon(Icons.share),)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(author,style: Style.description,),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(image)),
          const SizedBox(
            height: 20,
          ),
          Text(description,style: Style.subtitle1,),
          const SizedBox(
            height: 10,
          ),
          TextButton(onPressed: (){}, child: Text(url)),
          const SizedBox(
            height: 10,
          ),
          Text(content),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
