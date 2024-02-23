
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/isar/news_database.dart';
import 'package:untitled7/utils/app_style.dart';
import 'package:untitled7/utils/common_toat.dart';
class Details extends StatefulWidget {
  String title,description,image,author,url,content,publishedAt;
   Details({super.key,required this.title,required this.description,required this.image,required this.author,required this.url,required this.content,required this.publishedAt});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isClicked=false;
  bool isSaved=false;

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
          Text(widget.title,style: Style.heading2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.publishedAt),
              IconButton(icon:isClicked?const Icon(Icons.favorite):const Icon(Icons.favorite,color: Colors.red,),onPressed: (){
                setState(() {
                  isClicked=!isClicked;
                });
                isClicked?commonToast("removed"):commonToast("liked");
              },),
              InkWell(
                  onTap: (){
                    setState(() {
                      isSaved=!isSaved;
                    });
                    isSaved?context.read<NewsDatabase>().addNews(widget.description):context.read<NewsDatabase>().addNews(widget.title);
                    isSaved?commonToast("removed"):commonToast("saved");
                  },
                  child:isSaved? const Icon(Icons.save):const Icon(Icons.delete,color: Colors.red,)),
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
              Text(widget.author,style: Style.description,),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(widget.image)),
          const SizedBox(
            height: 20,
          ),
          Text(widget.description,style: Style.subtitle1,),
          const SizedBox(
            height: 10,
          ),
          TextButton(onPressed: (){}, child: Text(widget.url)),
          const SizedBox(
            height: 10,
          ),
          Text(widget.content),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
