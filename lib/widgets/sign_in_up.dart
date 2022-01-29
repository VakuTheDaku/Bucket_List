import 'package:flutter/material.dart';
import 'package:bucketlist/screens/login.dart';
Widget inputField(String text) {
  return Container(
    color: Colors.white54,
    width: double.infinity,
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
      ),
    ),
  );
}

Widget myButton(String text) {
  return Container(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24,
            fontFamily: 'Alef',
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
            color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
        primary: Colors.black,
      ),
    ),
  );
}
