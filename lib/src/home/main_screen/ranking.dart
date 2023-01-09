import 'package:duolingo/src/home/login/welcome_screen.dart';
import 'package:flutter/material.dart';

class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 16),
          child: Column(
            children: [
              Text(
                'Hello WOrld New Updates coming soon',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'We will soon blow ',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text('Start up launching soon'),
              Text('InshaAllah1'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Text(
                  "hello",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
        ),
      );
}
