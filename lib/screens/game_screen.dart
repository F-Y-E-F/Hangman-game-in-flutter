import 'package:flutter/material.dart';
import 'package:hangman/http/random_word.dart';
import '../widgets/guess_letter.dart';
import '../widgets/letter_click.dart';

class GameScreen extends StatefulWidget {
  static const routeName = "/game";

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final RandomWord _randomWordApi = RandomWord();
  String randomWord="ds";
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.accentColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              height: deviceHeight * 0.2,
              width: double.infinity,
              color: theme.primaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "lives : 4",
                    style: theme.textTheme.headline5,
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Hangman.svg/1200px-Hangman.svg.png',
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "0:30",
                    style: theme.textTheme.headline5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FittedBox(
                  child: Text(
                    randomWord,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: theme.primaryColor,
                        fontFamily: "ArchitectsDaughter"),
                  ),
                ),
              ),
            ),
            Divider(
              color: theme.primaryColor,
              thickness: 2.0,
            ),
            SizedBox(
              height: deviceHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  for(int i=0;i<randomWord.length;i++) GuessLetter()
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.1,
            ),
            for (int i = 0; i <= 3; i++) Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 0; j <= 5; j++) LetterClick(),
              ],
            )
          ],
        ),
      ),
    );
  }
  //----------------| Get random word |---------------------
  Future getWord() async {
    Map map = await _randomWordApi.getWord();
    setState(() => this.randomWord = map['word']);
  }
  //========================================================
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWord();

  }
}
