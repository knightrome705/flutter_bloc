import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green
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
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
