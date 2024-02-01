import 'package:flutter/material.dart';

const String background = 'assets/images/background.png';
const Color iconColor = Colors.grey;
const String myImage = 'assets/images/rohan.jpg';
const String myLogo = 'assets/images/logo.png';

class Game {
  String image = 'assets/images/pokeball.png';
  List<String>? gameImg;
  List<String> listOfImages = [
    'assets/images/charizard.png',
    'assets/images/gengar.png',
    'assets/images/lugia.png',
    'assets/images/blaziken.png',
    'assets/images/goodra.png',
    'assets/images/greyninja.png',
    'assets/images/swallo.png',
    'assets/images/pigeot.png',
    'assets/images/pikachu.png',
    'assets/images/balbasaur.png',
    'assets/images/squartle.png',
    'assets/images/togepi.png',
    'assets/images/balbasaur.png',
    'assets/images/blaziken.png',
    'assets/images/charizard.png',
    'assets/images/togepi.png',
    'assets/images/goodra.png',
    'assets/images/squartle.png',
    'assets/images/greyninja.png',
    'assets/images/lugia.png',
    'assets/images/gengar.png',
    'assets/images/pigeot.png',
    'assets/images/pikachu.png',
    'assets/images/swallo.png',
  ];
  List<Map<int,String>> check = [];
  void initGame() {
    gameImg = List.generate(24, (index) => image);
  }
}
