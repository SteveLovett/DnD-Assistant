import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  @override
  _QuestionCardState createState() => _QuestionCardState();
  final String playerTitle;

  const QuestionCard({this.playerTitle});
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: RaisedButton(
        padding: const EdgeInsets.all(8),
        color: Color(0xAAF57B51),
        disabledColor: Color(0xAAF57B51),
        hoverColor: Color(0xFFF57B51),
        child: Text(
          widget.playerTitle,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          setState(
            () {
              print('ouch');
            },
          );
        },
      ),
    );
  }
}
