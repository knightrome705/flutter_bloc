import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'cust_widget/cust_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  var name,favorite;
  @override
  void initState() {
    getData();
    super.initState();
  }
  void getData()async{
    SharedPreferences shared=await SharedPreferences.getInstance();
    setState(() {
      name=shared.getString("name")!.toUpperCase();
      favorite=shared.getStringList("item");
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
           UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(backgroundImage: AssetImage("assests/news.png"),),
            accountName: Text(name??"null"),
            accountEmail: const Text("newsapp.org.com"),
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          cust_settings(
            name: "Name",
            icon: const Icon(Icons.person),
            value: name??"null",
            onTap: () {
              print("Name setting tapped!");
            },
          ),
          cust_settings(
            name: "Favorite",
            icon: const Icon(Icons.favorite),
            value: favorite[1]??"null",
            onTap: () {

              print("Favorite setting tapped!");
            },
          ),
          cust_settings(
            name: "city",
            icon: const Icon(Icons.location_city),
            value: "Kannur",
            onTap: () {
              print("City setting tapped!");
            },
          ),
          cust_settings(
            name: "Theme",
            icon: const Icon(Icons.sunny),
            value: "light",
            onTap: () {

              print("Theme setting tapped!");
            },
          ),
          cust_settings(
            name: "Logout",
            icon: const Icon(Icons.logout),
            value: "user",
            onTap: () {
              Navigator.pushReplacementNamed(context, '/onboarding');
            },
          ),
        ],
      ),
    );
  }
}
