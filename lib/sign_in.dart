import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'sign_up.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.yellow[700],
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          title: Text('Login'),
        ),
        extendBodyBehindAppBar: false,

        body: Container(
          padding: const EdgeInsets.fromLTRB(35.0,150,35.0,35.0),

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
                        controller: usernameController,
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
                    SizedBox(height: 20.0,),
                    TextField(
                        controller: passwordController,
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
                    FlatButton(
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
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      onPressed: () async {
                        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.setString('username', usernameController.text);
                        Get.to(Home());

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


