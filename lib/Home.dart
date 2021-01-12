import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '20-40.dart';
import '40-60.dart';
import 'package:get/get.dart';
import 'sign_up.dart';
import 'sign_in.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double Age = 0;
  double Weight = 0.0;
  bool less40 = true;



  final globalKey = GlobalKey<ScaffoldState>();


  @override

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        key: globalKey,
        appBar: AppBar(
          title:  Text('RS FITNESS & NUTRITION'),
          backgroundColor: Colors.yellow[700],
        ),
        drawer: Drawer(
          child: Column(
            children:<Widget> [
              Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/drawer.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Center(
                      child: Column(
                        children: <Widget> [
                          Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(top: 30,
                              bottom: 10,
                            ),

                          )],
                      )
                  )
              ),
              ListTile(
                  leading: Icon(Icons.accessibility_new_outlined),
                  title: Text('Tips for Healthy Life'),
                  onTap: (){
                  }
              ),
              ListTile(
              leading: Icon(Icons.ac_unit_outlined),
                title: Text("Daily Intake of Water"),
                onTap: () {
                },
              ),


              ListTile(
    leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                onTap: () async {
                  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                  sharedPreferences.remove('username');
                  Get.to(SignUpScreen());
                },
              ),

            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              children: <Widget> [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Age',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) {
                    setState((){
                      try{
                        Age = double.parse(newValue);
                      }
                      catch (e){}
                    });
                  },
                ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Gender',
          ),

        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Height',
          ),
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Weight',
          ),
          keyboardType: TextInputType.number,
          onChanged: (newValue) {
            setState((){
              try{
                Weight = double.parse(newValue);
              }
              catch (e){}
            });
          },
        ),
                SizedBox(height: 50),
                RaisedButton(
                    child: Text('Calculate'),
                    onPressed: (){
                      setState((){
                        Age >= 20 && Age <= 40   ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Less40() )

                        ) : Weight >=  40 && Weight <= 80 ? Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Less40() )

                        ) : Age > 40 && Age <= 60 ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Less60() )

                        ) : Weight > 80 && Weight <= 150 ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Less60() )

                        )  : showDialog(context: context, builder: (context) => AlertDialog(title: Text('No Diet Plan')));

                      });
                    }
                )
              ]
          ),
        )

    );
  }
}
