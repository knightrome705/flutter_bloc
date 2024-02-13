import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Settings",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text("Martin"),
            accountEmail: Text("martin@gmail.com"),
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
          ),
          cust_settings(
            name: "Name",
            icon: Icon(Icons.person),
            value: "Martin",
          ),
          cust_settings(name: "Favorite", icon: Icon(Icons.favorite),value: "Science"),
          cust_settings(name: "city", icon: Icon(Icons.location_city),value: "Kannur"),
          cust_settings(name: "Theme", icon: Icon(Icons.sunny),value: "light",)
        ],
      ),
    );
  }
}

class cust_settings extends StatelessWidget {
  String name;
  String value;
  Icon icon;
  cust_settings({
    super.key,
    required this.name,
    required this.icon,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(name),
          subtitle: Text(value,style: TextStyle(fontSize: 15),),
        ),
      ),
    );
  }
}
