import 'package:flutter/material.dart';
import 'package:untitled7/utils/app_colors.dart';
class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News.live"),
        backgroundColor: primary,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
