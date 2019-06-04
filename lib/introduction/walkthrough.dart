import 'package:flutter/material.dart';
import 'choose_role.dart';

class Walkthrough_Screen extends StatefulWidget {
  @override
  _Walkthrough_ScreenState createState() => _Walkthrough_ScreenState();
}

class _Walkthrough_ScreenState extends State<Walkthrough_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: <Widget>[
              Walkthrougth(
                  title: "学費を出世払いに！",
                  textBody:
                      "ISAs(Income Share Agreements)は学費の出世払いを可能にする全く新しい奨学金です。",
                  imageAssets: 'assets/undraw_graduation_9x4i.png'),
              Walkthrougth(
                  title: "大学生・院生へ",
                  textBody: "自分の将来性をアピールすることによって、未来に投資してもらおう！",
                  imageAssets: 'assets/undraw_exams_g4ow.png'),
              Walkthrougth(
                  title: "投資家の方へ",
                  textBody: "ISAsを通じて、日本の教育界に大きな変革を起こしましょう！",
                  imageAssets: 'assets/undraw_investing_7u74.png'),
            ],
          ),
        ],
      ),
    );
  }
}

//OnBording Screenのクラス
class Walkthrougth extends StatelessWidget {
  final String title;
  final String textBody;
  final String imageAssets;

  Walkthrougth(
      {Key key,
      @required this.title,
      @required this.imageAssets,
      @required this.textBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssets, width: 250.0),
          SizedBox(height: 70.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
              color: Color(0xFF606060),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              textBody,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF969696),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Get Started!',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                color: Color(0xFF15B4F1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseRole(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
