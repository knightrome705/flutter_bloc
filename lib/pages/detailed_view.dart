
import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  String title,description,image,author,url,content,publishedAt;
   Details({super.key,required this.title,required this.description,required this.image,required this.author,required this.url,required this.content,required this.publishedAt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Description",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(publishedAt),
              IconButton(onPressed: ()async{
                  // await Share.share(url);
              },icon: const Icon(Icons.share),)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(author,style: const TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
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
          Text(description,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
