import 'package:caziq_musiq_player/pages/login_page.dart';
import 'package:caziq_musiq_player/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'dart:ui';
import 'package:rive/rive.dart' as rive;

class SongMenuPage extends StatefulWidget {
  const SongMenuPage({super.key});

  @override
  State<SongMenuPage> createState() => _SongMenuPageState();
}

class _SongMenuPageState extends State<SongMenuPage> {
  final kDarkBlueColor = const Color.fromARGB(255, 27, 57, 109);
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const RegisterPage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background:
       [
        Stack(
        children: [Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("./assets/images/Spline.png"),
          ),
          const rive.RiveAnimation.asset("./assets/riveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 10,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 30,
                sigmaY: 30,
              ),
              child: const SizedBox(),
            ),
          ),],
      ),
        // Image.asset(
        //   './assets/images/slide_1.png',
        //   height: MediaQuery.of(context).size.height * 0.6,
        // ),
        Image.asset(
          './assets/images/slide_2.png',
          height: 400,
        ),
        Image.asset(
          './assets/images/slide_3.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        ListView(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 480,
                  ),
                  Text(
                    'On your way...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kDarkBlueColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'to find the perfect looking Onboarding for your app?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'You’ve reached your destination.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sliding with animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Start now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Where everything is possible and customize your onboarding.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
