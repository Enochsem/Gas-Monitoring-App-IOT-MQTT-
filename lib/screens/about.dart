import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('MQTT & IOT'),
      content: Container(
        child: Text('Application Details\n1.Fire\n2.Smoke'),
      ),
      actions: <Widget>[
        RaisedButton(onPressed: ()=>Navigator.pop(context),child: Text('Ok'),)
      ],
    );
  }
}
