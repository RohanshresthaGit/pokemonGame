import 'package:flutter/material.dart';
import 'package:mind_game/screens/constants/style.dart';
import 'package:mind_game/screens/constants/variable.dart';
import 'package:mind_game/screens/game_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text(
          "Find the Twin Pokemon",
          style: titleStyle(),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(background), fit: BoxFit.cover)),
        child: Center(
          child: ElevatedButton(
            onPressed: onPLay,
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.play_arrow,
                    color: iconColor,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "PLAY",
                    style: textstyle(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPLay() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const GameScreen()));
  }
}
