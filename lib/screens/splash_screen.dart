import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mind_game/screens/main_screen.dart';
import 'package:mind_game/screens/constants/variable.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(myLogo),
            const SizedBox(
              height: 200,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(myImage),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Rohan Shrestha")
              ],
            )
          ],
        ),
      ),
    );
  }
}
