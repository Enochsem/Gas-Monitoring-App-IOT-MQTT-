import 'package:flutter/material.dart';
import 'package:mqtt/commons/color_config.dart';
import 'package:mqtt/screens/dashboard_screen.dart';
import 'package:mqtt/widgets/drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
///TODO THIS PAGE IS GOING TO BE FOR THE GRAPH
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MQTTDrawer(),
      ),
      appBar: AppBar(
        title: Text('MQTT GRAPH'),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard())),
            icon: Icon(Icons.dashboard),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 8.0,),
          Card(
            color: background,
            child: ListTile(
              leading: Icon(Icons.graphic_eq,color: Colors.blueAccent,size: 25,),
              title: Text(
                  'Humidity',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              subtitle: Text(
                  '59.75',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              trailing: Icon(Icons.graphic_eq,color: Colors.blueAccent,size: 20,),
              onTap: (){},
            ),
          ),
          SizedBox(height: 15.0,),
          Container(
            padding: EdgeInsets.all(15.0),
            height: 350.0,
            color: background,
            child:SfCartesianChart() ,
          )
        ],
      ),
    );
  }
}
