import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:phoenix_trees/constants/firbase_auth_constants.dart';
import 'package:phoenix_trees/screens/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7C5DCE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: SvgPicture.asset(
                'assets/images/navigation.svg',
                height: Get.height / 2,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "We need to Save Our Planet",
              style: Get.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "It is everyone's responsibility to take care of the environment to make this planet a wonderful place to live.",
              // textAlign: TextAlign.center,
              style: Get.textTheme.subtitle2!.copyWith(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            // const Spacer(),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // authController.signInWithGoogle();
                  Get.offAll(() => Home());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Sign in with Google",
                      textAlign: TextAlign.center,
                      style: Get.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
