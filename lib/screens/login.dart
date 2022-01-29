import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/sign_in_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('images/login.jpg'),
              scale: 0.1),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.12,
                  ),
                  Text(
                    "Hey,",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Alef',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Login Now.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Alef',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "If you are new",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Alef',
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => CreateAccountScreen()),
                      //     );
                      //   },
                      //   child: Text(
                      //     "Create New",
                      //     style: TextStyle(
                      //       color: Color.fromRGBO(13, 96, 43, 1),
                      //       fontSize: 20,
                      //       fontFamily: 'Alef',
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  inputField('email'),
                  SizedBox(
                    height: 20,
                  ),
                  inputField('Password'),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Alef',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  myButton("Log In")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
