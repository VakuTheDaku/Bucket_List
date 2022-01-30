import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/sign_in_up.dart';
import './createacnt.dart';
import 'package:bucketlist/modules/http.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController= TextEditingController();
  TextEditingController passController= TextEditingController();


  createUser() async {


    var result=await http_post("create-user", {
      "email": nameController.text,
      "password": passController.text
    });
    }




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("BucketList", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white),),

        toolbarHeight: 80,
        elevation: 0,

        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('images/login.jpg'),
              scale: 1),
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
                      TextButton(

                          style: ButtonStyle(

                              // padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)
                                  )
                              )
                          ),

                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registerpage()),
                          );
                        },
                        child: Text(

                          "Create New",
                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 20,
                            fontFamily: 'Alef',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(

                    height: 10,
                  ),
               TextField(

                controller: nameController,
                decoration: InputDecoration(
                    fillColor: Colors.white54,
                    filled: true,
                    hintText: "Email"
                ),),

                  SizedBox(
                    height: 20,
                  ),
              TextField(

                controller: passController,
                decoration: InputDecoration(
                    fillColor: Colors.white54,
                    filled: true,
                    hintText: "Password"
                ),),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(

                    onPressed: (){},
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
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: createUser,
                  child: Text(
                    "Log In",
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
              )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
