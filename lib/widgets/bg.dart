import 'dart:ui';
import 'package:rive/rive.dart' as rive;

import 'package:flutter/material.dart';

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({super.key});

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}