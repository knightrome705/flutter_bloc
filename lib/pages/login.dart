import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/pages/category.dart';

import '../utils/common_toat.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController name=TextEditingController();
  final _alphabetValidator = RegExp(r'^[a-zA-Z]+$');
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Form(
            key:_formKey ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assests/news.png"))
                  ),
                ),
                const Text("The News App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",style: TextStyle(fontStyle: FontStyle.italic),)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: const Icon(Icons.navigate_next),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "required";
                      }else if(!_alphabetValidator.hasMatch(value)){
                        return "alphabet from a-z & A-z";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: ()async{
                  SharedPreferences user= await SharedPreferences.getInstance();
                  if(_formKey.currentState!.validate()){
                    user.setString("name", name.text);
                    Navigator.pushReplacementNamed(context,'/category');
                    return commonToast("sucess");
                  }else{
                    return commonToast("failed");
                  }
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(200, 50)
                ), child:const Text("submit",style: TextStyle(color: Colors.white),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
