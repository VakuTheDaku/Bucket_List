import 'package:bucketlist/screens/createacnt.dart';
import 'package:flutter/material.dart';
import './screens/login.dart';

void main() {
  runApp(bucketlist());
}

class bucketlist extends StatefulWidget {
  @override
  _bucketlistState createState() => _bucketlistState();
}

class _bucketlistState extends State<bucketlist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
