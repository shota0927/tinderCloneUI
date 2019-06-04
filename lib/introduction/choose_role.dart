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
    return Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomeInvestorPage()));
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.lightBlueAccent),
                  Text('学生の方はこちらから'),
                ],
              ),),

              SizedBox(height: 40.0),
              ButtonTheme(
                minWidth: 100.0,

                child: RaisedButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.attach_money, color: Colors.yellowAccent,),
                      Text('投資家の方はこちらから'),
                    ],
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
