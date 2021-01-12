import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'Home.dart';

String finalUser;

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Register'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          elevation: 0.0,
          backgroundColor: Colors.yellow[700],

        ),
        extendBodyBehindAppBar: false,
        body: Container(
          padding: const EdgeInsets.fromLTRB(35.0,120,35.0,35.0),
          child: ListView(
            children: <Widget> [
              Expanded(
                child: SingleChildScrollView(),
              ),
              SafeArea(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height:50.0),
                    TextField(
                        style:TextStyle(fontSize: 18.0,
                            color: Colors.black54),
                        decoration: InputDecoration(
                            hintText: 'username',
                            contentPadding: const EdgeInsets.all(15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            )
                        )
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                        style:TextStyle(fontSize: 18.0,
                            color: Colors.black54),
                        decoration: InputDecoration(
                            hintText: 'email',
                            contentPadding: const EdgeInsets.all(15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            )
                        )
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                        obscureText: true,
                        style:TextStyle(fontSize: 18.0,
                            color: Colors.black54),
                        decoration: InputDecoration(
                            hintText: 'password',
                            contentPadding: const EdgeInsets.all(15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            )
                        )
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                        obscureText: true,
                        style:TextStyle(fontSize: 18.0,
                            color: Colors.black54),
                        decoration: InputDecoration(
                            hintText: 'confirm password',
                            contentPadding: const EdgeInsets.all(15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow[700]),
                              borderRadius: BorderRadius.circular(5),
                            )
                        )
                    ),
                    SizedBox(height: 20.0,),
                    FlatButton(
                      color: Colors.yellow[700],
                      child: Text('SignUp',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow[700],
                            width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen() )

                        );
                      },
                    ),

                  ],
                ),
              ),
            ], ),
        )
    );
  }
}
