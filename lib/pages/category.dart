import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/pages/userlocarion.dart';
import 'package:untitled7/utils/common_toat.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<bool> isSelected = List.generate(7, (_) => false);
  List<String> items=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "Choose your fav",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              const SizedBox(
                height: 30,
              ),

              Wrap(
                children: [
                  ChoiceChip(
                    label: const Text("Business"),
                    selected: isSelected[0],
                    selectedColor: isSelected[0] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[0] = value;
                        items.add("Business");
                      });
                    },
                  ),
                  const SizedBox(width: 40,),
                  ChoiceChip(
                    label: const Text("Entertainment"),
                    selected: isSelected[1],
                    selectedColor: isSelected[1] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[1] = value;
                        isSelected[1] ?items.add("Entertainment"):items.remove("Entertainment");
                      });
                    },
                  ),
                  const SizedBox(width: 20,),
                  ChoiceChip(
                    label: const Text("General"),
                    selected: isSelected[2],
                    selectedColor: isSelected[2] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[2] = value;
                        isSelected[2] ?items.add("General"):items.remove("General");
                      });
                    },
                  ),
                  const SizedBox(width: 40,),
                  ChoiceChip(
                    label: const Text("Health"),
                    selected: isSelected[3],
                    selectedColor: isSelected[3] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[3] = value;
                        isSelected[3] ?items.add("Health"):items.remove("Health");
                      });
                    },
                  ),
                  const SizedBox(width: 30,),
                  ChoiceChip(
                    label: const Text("Science"),
                    selected: isSelected[4],
                    selectedColor: isSelected[4] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[4] = value;
                        isSelected[4] ?items.add("Science"):items.remove("Science");
                      });
                    },
                  ),
                  const SizedBox(width: 40,),
                  ChoiceChip(
                    label: const Text("Sports"),
                    selected: isSelected[5],
                    selectedColor: isSelected[5] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[5] = value;
                        isSelected[5] ?items.add("Sports"):items.remove("Sports");
                      });
                    },
                  ),
                  const SizedBox(width: 20,),
                  ChoiceChip(
                    label: const Text("Technology"),
                    selected: isSelected[6],
                    selectedColor: isSelected[6] ? Colors.blue : null,
                    onSelected: (value) {
                      setState(() {
                        isSelected[6] = value;
                        isSelected[6] ? items.add("Technology"):items.remove("Technology");
                        print(items);
                      });
                    },
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: ()async{
                      SharedPreferences shared=await SharedPreferences.getInstance();
                      if(items.length>2||items.length==2){
                        // await shared.setStringList("category", items);
                        // var items=shared.getStringList("category");
                        commonToast("sucess");
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const UserLocation(),));
                      }else{
                      commonToast("minimum 2 required");
                      }

                    }, child: const Text("submit")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
