import 'package:flutter/material.dart';
import 'package:mqtt/screens/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white70
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           Padding(
             padding: EdgeInsets.all(25.0),
             child: CircleAvatar(
               radius: 100,
               child:  Icon(Icons.android,color: Colors.green,size: 150.0,),
             ),
           ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'This Application will provide you'
                    ' \nwith the following :\n 1.Data\n2.information',
                style: TextStyle(
                    fontSize: 16.0
                ),
              ),
            ),
           Padding(
             padding:EdgeInsets.all(15.0),
             child:  SizedBox(
               height: 50.0,
               width: double.infinity,
               child: RaisedButton(
                 onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));},
                 color: Colors.green,
                 child: Text('Get Started'),
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
