import 'package:flutter/material.dart';
import 'package:mind_game/screens/constants/style.dart';

class TextContainer extends StatelessWidget {
  final String title;
  int counter;
  TextContainer({super.key, required this.title,required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(21.0)),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: textstyle(),
          ),
          const SizedBox(
            width: 20,
          ),
          const VerticalDivider(
            thickness: 2,
            color: Colors.black,
            indent: 5.0,
            endIndent: 5.0,
          ),
          Text(
            counter.toString(),
            style: textstyle(),
          )
        ],
      ),
    );
  }
}
