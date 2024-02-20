import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'botton_nav.dart';

class UserLocation extends StatefulWidget {
  const UserLocation({super.key});

  @override
  State<UserLocation> createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Location",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Bottom_Nav(),));
                    }, child: const Text("skip",style: TextStyle(fontSize: 15,color: Colors.grey),))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate"),
                const SizedBox(
                  height: 30,
                ),
                AvatarGlow(
                  glowColor: Colors.grey,
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                       shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assests/location.png"))
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter location",
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.navigate_next_outlined,color: Colors.white,),
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/bottom');
        },
      ),
    );
  }
}
