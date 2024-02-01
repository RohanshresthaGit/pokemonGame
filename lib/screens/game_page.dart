import 'package:flutter/material.dart';
import 'package:mind_game/screens/components/text_container.dart';
import 'package:mind_game/screens/constants/style.dart';
import 'package:mind_game/screens/constants/variable.dart';
import 'package:mind_game/screens/main_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Game _game = Game();
  int counter = 0;
  int score = 0;
  @override
  void initState() {
    super.initState();
    _game.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Pokemon",
          style: titleStyle(),
        ),
      ),
      body: Container(
        color: const Color(0xFF333333),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 670,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            _game.gameImg![index] = _game.listOfImages[index];
                            _game.check.add({index: _game.gameImg![index]});
                            counter++;
                            if (_game.check.length == 2) {
                              if (_game.check[0].values.first ==
                                  _game.check[1].values.first) {
                                score++;
                                _game.check.clear();
                              } else {
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  setState(() {
                                    _game.gameImg![_game.check[0].keys.first] =
                                        _game.image;
                                    _game.gameImg![_game.check[1].keys.first] =
                                        _game.image;
                                    _game.check.clear();
                                  });
                                });
                              }
                            }
                            if (score == 12) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Game over"),
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      content: Text(
                                          "You've completed game in $counter tries"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Exit")),
                                      ],
                                    );
                                  });
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0),
                              image: DecorationImage(
                                  image: AssetImage(_game.gameImg![index]),
                                  fit: BoxFit.cover)),
                        ));
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainer(
                  title: "Tries",
                  counter: counter,
                ),
                TextContainer(
                  title: "Score",
                  counter: score,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
