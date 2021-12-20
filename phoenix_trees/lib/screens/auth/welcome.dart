import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phoenix_trees/screens/auth/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff356178),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Let's Preserve the\nOzone Layer",
              textAlign: TextAlign.center,
              style: Get.textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SvgPicture.asset(
              'assets/images/exploring.svg',
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const Login());
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD8634A),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
              ),
              child: Text(
                "Get Started",
                textAlign: TextAlign.center,
                style: Get.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
