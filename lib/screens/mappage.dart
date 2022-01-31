import 'package:bucketlist/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/sign_in_up.dart';
import './createacnt.dart';
import 'package:bucketlist/modules/http.dart';

class Mappage extends StatefulWidget {
  const Mappage({Key? key}) : super(key: key);

  @override
  _MappageState createState() => _MappageState();
}

class _MappageState extends State<Mappage> {

  String response="";
Future<void> User() async{
  var result=await http_get("get-username");
    print(result);
    if(result.ok){
      setState(() {
        response=result.data['name'].toString();

      });

    }else{
      print(result);
    }
  }
  LogoutUser() async {


    var result=await http_get("logout");
    if(result.ok){
      setState(() {


          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginScreen()));

        });
      }

    }



  @override
  void initState() {
    super.initState();
    User();
  }
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
        body:
            Container(
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
            "Welcome",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Alef',
            fontWeight: FontWeight.bold,
            ),
            ),
            Text(
            response,
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
              TextButton(

                onPressed: LogoutUser,
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Alef',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
    ])))))
    );
  }
}
