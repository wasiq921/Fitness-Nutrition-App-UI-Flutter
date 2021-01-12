import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'Home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

String finalUser;

class LaunchingScreen extends StatefulWidget {
  static const routeName = '/launching';
  @override
  _LaunchingScreenState createState() => _LaunchingScreenState();
}

class _LaunchingScreenState extends State<LaunchingScreen> {
  void initState() {
    getValidationData().whenComplete(() async {
      Get.to(finalUser == null ? LaunchingScreen() : Home());
    });

    super.initState();
  }
  Future getValidationData() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainedUser = sharedPreferences.getString('username');
    setState((){
      finalUser = obtainedUser;
    });
    print(finalUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          ),
        extendBodyBehindAppBar: true,
        body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/RS-FITNESS-gold-logo.png'),)
    ),
    child: ListView(
    children: <Widget> [
    Expanded(
    child: SingleChildScrollView(),
    ),
    SafeArea(
    child: new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      SizedBox(height: 550),
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: FlatButton(

      color: Colors.yellow[700],
      child: Text('Register',
      style: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
      ),
      ),
      shape: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.yellow[700],
      width: 2),
      borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15),
      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen() )

      );
      },
      ),
    ),
      Padding(
        padding: const EdgeInsets.all(25),
        child: FlatButton(

          color: Colors.yellow[700],
          child: Text('Login',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow[700],
                width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(15),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen() )

            );
          },
        ),
    ),

    ],
    ),
    ),
    ], ),
    )
    );
  }
}
