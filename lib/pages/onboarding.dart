import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled7/pages/userlocarion.dart';

import 'category.dart';
import 'login.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: const [
                Login(),
                Category(),
                UserLocation()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SmoothPageIndicator(
                    controller: controller,
                    count: 2, // number of pages
                    effect: const ExpandingDotsEffect()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
