import 'package:flutter/material.dart';

class Intro_1 extends StatefulWidget {
  @override
  _Intro_1State createState() => _Intro_1State();
}

class _Intro_1State extends State<Intro_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: <Widget>[
              Walkthrougth(textContent: "Walkthrough one"),
              Walkthrougth(textContent: "Walkthrough two"),
              Walkthrougth(textContent: "Walkthrough tree"),
              Walkthrougth(textContent: "Walkthrough four"),
            ],
          ),
        ],
      ),
    );
  }
}

//OnBording Screenのクラス
class Walkthrougth extends StatelessWidget {
  final String textContent;
  Walkthrougth({Key key, @required this.textContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.redAccent),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text(textContent)),
    );
  }
}
