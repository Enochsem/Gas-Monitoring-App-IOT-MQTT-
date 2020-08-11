import 'package:flutter/material.dart';
import 'package:mqtt/commons/color_config.dart';
import 'package:mqtt/screens/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white70
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: CircleAvatar(
                    radius: 100,
                    child:  Icon(Icons.android,color: Colors.green,size: 150.0,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        child: TextField(
                          controller: userNameController,
                          decoration: InputDecoration(
                            labelText: 'User Name',
                            hintText: 'Admin',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        alignment: Alignment.topCenter,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Admin password',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                Padding(
                  padding:EdgeInsets.all(15.0),
                  child:  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>DashBoard()));},
                      color: Colors.green,
                      child: Text('Login',style: TextStyle(color:btnText),),
                    ),
                  ),
                ),
                Center(child: FlatButton(onPressed: (){}, child: Text('Forgot password ?',style:TextStyle(color: button),)),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
