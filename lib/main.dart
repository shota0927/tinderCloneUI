import 'package:flutter/material.dart';
import './cards.dart';
import './matches.dart';
import './profiles.dart';
import 'home.dart';
import 'home_investor.dart';
import 'introduction/intro_1.dart';
import 'introduction/choose_role.dart';

void main() => runApp(MyApp());

final MatchEngine matchEngine = new MatchEngine(
  matches: demoProfiles.map((Profile profile) {
    return Match(profile: profile);
  }).toList(),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyFund',
      theme: ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: ChooseRole(),

    );
  }
}
