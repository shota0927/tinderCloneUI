import 'package:flutter/material.dart';
import 'package:tinder/home_investor.dart';
import 'package:tinder/home.dart';

class ChooseRole extends StatefulWidget {
  @override
  _ChooseRoleState createState() => _ChooseRoleState();
}

class _ChooseRoleState extends State<ChooseRole> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 260.0,
            height: 50.0,
            child: RaisedButton(
              color: Color(0xFF15B4F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomeInvestorPage(),
                  ),
                );
              },
              child: Text(
                '学生の方はこちらから',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 40.0),
          SizedBox(
            width: 260.0,
            height: 50.0,
            child: RaisedButton(
              color: Color(0xFF0039ba),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              child: Text(
                '投資家の方はこちらから',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
