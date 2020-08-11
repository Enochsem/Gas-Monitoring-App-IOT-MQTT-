import 'package:flutter/material.dart';
import 'package:mqtt/commons/color_config.dart';
import 'package:mqtt/screens/about.dart';
import 'package:mqtt/screens/dashboard_screen.dart';
import 'package:mqtt/screens/home_screen.dart';

class MQTTDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircleAvatar(
            backgroundColor: background,
            radius: 30.0,
            child: Icon(Icons.android,size: 50.0,color: green ,),
          ),
        ),
        Center(child: Text('MQTT & IOT'),),
        Divider(height: 10.0,),
        ListTile(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},
          leading: Icon(Icons.home,size: 30.0,),
          title: Text('Home'),
        ),
        ListTile(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard())),
          leading: Icon(Icons.dashboard,size: 30.0,),
          title: Text('DashBoard'),
        ),
        ListTile(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>About())),
          leading: Icon(Icons.info_outline,size: 30.0,),
          title: Text('About'),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.verified_user,size: 30.0,),
          title: Text('Version 1.0'),
        ),
      ],
    );
  }
}
