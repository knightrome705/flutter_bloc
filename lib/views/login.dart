import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/routes/name_routes.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/utils/app_style.dart';

import '../utils/common_toat.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   late final TextEditingController namecontroller ;
  final _alphabetValidator = RegExp(r'^[a-zA-Z]+$');
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    namecontroller=TextEditingController();
    removeUser();
    super.initState();
  }
  void removeUser()async{
    SharedPreferences user =
        await SharedPreferences.getInstance();
    user.clear();
  }
void getUser()async{
  SharedPreferences user =
      await SharedPreferences.getInstance();
  user.setString("name", namecontroller.text);
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: green,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assests/news.png"))),
                ),
                Text("The News App", style: Style.heading1),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed"
                          " do eiusmod tempor incididunt ut labore et dolore magna a"
                          "liqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori"
                          "s nisi ut aliquip ex ea commodo consequat.",
                      style: Style.subtitle2,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      suffixIcon: const Icon(Icons.navigate_next),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else if (!_alphabetValidator.hasMatch(value)) {
                        return "alphabet from a-z & A-z";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {

                    if (_formKey.currentState!.validate()) {
                      getUser();
                      Navigator.pushReplacementNamed(context, RouteName.category);
                      return commonToast("sucess");
                    } else {
                      return commonToast("failed");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: secondary,
                      minimumSize: const Size(200, 50)),
                  child: Text(
                    "submit",
                    style: TextStyle(color: white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
  @override
  void dispose() {
    namecontroller.dispose();
    super.dispose();
  }
}
