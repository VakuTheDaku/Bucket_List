import 'package:bucketlist/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bucketlist/modules/http.dart';
class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController nameController= TextEditingController();
  TextEditingController passController= TextEditingController();
  TextEditingController mailController= TextEditingController();

  String response="";
  createUser() async {


    var result=await http_post("create-user", {
      "name": nameController.text,
      "email": mailController.text,
      "password": passController.text
    });
    print(result.data);
    if(result.ok){
      setState(() {
        response=result.data['status'].toString();
        if(response=="Registered") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LoginScreen()),
          );
        }
      });

    }
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
        body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage('images/Register.jpg'),
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
    "Register Now.",
    style: TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontFamily: 'Alef',
    fontWeight: FontWeight.bold,
    ),
    ),
      SizedBox(
        height: 20,
      ),
      TextField(

        controller: nameController,
        decoration: InputDecoration(
            fillColor: Colors.white54,
            filled: true,
            hintText: "Username"
        ),),
    SizedBox(
    height: 10,
    ),

    SizedBox(

    height: 10,
    ),
    TextField(

    controller: mailController,
    decoration: InputDecoration(
    fillColor: Colors.white54,
    filled: true,
    hintText: "Email"
    ),),

    SizedBox(
    height: 20,
    ),
    TextField(
      obscureText: true,
    controller: passController,
    decoration: InputDecoration(
    fillColor: Colors.white54,
    filled: true,

    hintText: "Password"
    ),),
    SizedBox(
    height: 10,
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
    "Register",
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
    ),
    Text(
        response, textAlign: TextAlign.center,)
    ],
    ),
    ),

    ),
    ),

        ),

    );


  }

  }

