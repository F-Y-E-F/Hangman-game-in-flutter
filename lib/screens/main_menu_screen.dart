import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangman/screens/game_screen.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.accentColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "HANG\nMAN\n_____",
              textAlign: TextAlign.center,
              style: theme
                  .textTheme
                  .headline1
                  .copyWith(color: theme.primaryColor),
            ),SizedBox(height: 80,),
            Container(
              width: double.infinity,
              height: 200,
              color: theme.primaryColor,
              child: Column(
                mainAxisAlignment:    MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: FlatButton(
                            splashColor: theme.primaryColor.withOpacity(0.3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () {
                              Navigator.pushNamed(context, GameScreen.routeName);
                            },
                            child: Text("1 Player",style: theme
                                .textTheme
                                .headline6),
                            color: theme.accentColor,
                            padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            splashColor: theme.primaryColor.withOpacity(0.3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () {  },
                            child: Text("2 Players",style: theme
                                .textTheme
                                .headline6),
                            color: theme.accentColor,
                            padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                          ),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ), Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: FlatButton(
                            splashColor: theme.primaryColor.withOpacity(0.3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () {  },
                            child: Text("High scores",style: theme
                                .textTheme
                                .headline6),
                            color: theme.accentColor,
                            padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            splashColor: theme.primaryColor.withOpacity(0.3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () {  },
                            child: Text("Info",style: theme
                                .textTheme
                                .headline6),
                            color: theme.accentColor,
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                          ),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  )
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            )
          ],
        ));
  }
}