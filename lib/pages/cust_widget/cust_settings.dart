import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_style.dart';
class cust_settings extends StatelessWidget {
  final String name;
  final String value;
  final Icon icon;
  final VoidCallback onTap;

  cust_settings({
    Key? key,
    required this.name,
    required this.icon,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          onTap: onTap,
          leading: icon,
          title: Text(name),
          subtitle: Text(
            value,
            style: Style.settings,
          ),
        ),
      ),
    );
  }
}
