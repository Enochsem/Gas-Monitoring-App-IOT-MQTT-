import 'package:flutter/material.dart';
import 'package:mqtt/screens/home_screen.dart';
import 'package:mqtt/widgets/drawer.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:  MQTTDrawer(),
      ),
      appBar: AppBar(
        title: Text('DashBoard'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        children: <Widget>[
          SizedBox(height: 20.0,),
          Card(
            child: ListTile(
              leading: Icon(Icons.find_replace,color: Colors.blueAccent,size: 25,),
              title: Text('Temperature'),
              subtitle: Text('Alert message'),
              trailing: Text('c'),
              onTap: (){},
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            child: ListTile(
              leading: Icon(Icons.warning,color: Colors.blueAccent,size: 25,),
              title: Text('Humidity'),
              subtitle: Text('Alert message'),
              trailing: Text('%'),
              onTap: (){},
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            child: ListTile(
              leading: Icon(Icons.texture,color: Colors.blueAccent,size: 25,),
              title: Text('Fire'),
              subtitle: Text('Alert message'),
              trailing: Text('*'),
              onTap: (){},
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            child: ListTile(
              leading: Icon(Icons.blur_circular,color: Colors.blueAccent,size: 25,),
              title: Text('Smoke'),
              subtitle: Text('Alert message'),
              trailing: Text('~'),
              onTap: (){},
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            child: ListTile(
              leading: Icon(Icons.blur_circular,color: Colors.blueAccent,size: 25,),
              title: Text('Weight'),
              subtitle: Text('Alert message'),
              trailing: Text('kg'),
              onTap: (){},
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            child: ListTile(
              leading: Icon(Icons.graphic_eq,color: Colors.blueAccent,size: 25,),
              title: Text('Snycfusion Chart'),
              subtitle: Text('Graph of MQTT'),
              trailing: Icon(Icons.arrow_forward_ios,size: 50.0,),
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));},
            ),
          )
        ],
      ),
    );
  }
}
