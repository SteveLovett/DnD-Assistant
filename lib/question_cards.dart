import 'package:flutter/material.dart';

RaisedButton questionCard(String playerTitle) {
  return RaisedButton(
    padding: const EdgeInsets.all(8),
    color: Color(0x88F44336),
    disabledColor: Color(0xAAF44336),
    child: Text(
      playerTitle,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    onPressed: null,
  );
}
