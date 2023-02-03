import 'package:demo_application/main.dart';
import 'package:flutter/material.dart';

class ResultPopup extends StatelessWidget {
  final int points;

  ResultPopup({required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/primaryBg.png'),
          fit: BoxFit.scaleDown
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Result',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'You scored is $points !',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black
            ),
          ),
          SizedBox(height: 16.0),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizApp()));
            },
            child: Text(
              'Restart',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.tealAccent,
              ),
            ),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}

void showResultPopup(BuildContext context, int points) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ResultPopup(
        points: points,
      );
    },
  );
}
