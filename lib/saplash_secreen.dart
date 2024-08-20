import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:coffeeapp/welcomscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaplashSecreen extends StatelessWidget {
  const SaplashSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.orangeAccent,
        animationDuration: Duration(seconds: 7),
          centered: true,

          splash: Column(
            children: [
              Image.asset("assets/images/logo.png",
              height: 250,
              width: 250,),
              Text(
                "Let's Go For coffee",
                style: GoogleFonts.lora(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          splashIconSize: 400,
          splashTransition: SplashTransition.sizeTransition,
          nextScreen: Welcomscreen()),
    );
  }
}
