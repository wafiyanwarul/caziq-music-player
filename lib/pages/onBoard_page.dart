import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'package:rive/rive.dart' as rive;
// import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

const mainColorText = Color.fromARGB(255, 44, 44, 44);
String loremText = loremIpsum(words: 60, paragraphs: 3, initWithLorem: true);

class _OnBoardPageState extends State<OnBoardPage> {
  String inputTitle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
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
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "CAZIQ",
                    style: TextStyle(
                        color: mainColorText,
                        fontSize: 70,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Poppins"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    loremText,
                    style: const TextStyle(
                      color: mainColorText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: const WidgetStatePropertyAll(
                        Colors.white,
                      ),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.blue.shade300),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/song-menu');
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutPage()));
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         AboutPage(title: inputTitle), // Mengirim inputTitle
                      //   ),
                      // );
                    },
                    child: const Text('TAP HERE TO NEXT'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
