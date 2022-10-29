import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_app/emergency.dart';

class Dash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RAKSHAQ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFE66216),
      ),
      body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.orange,
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.local_police_outlined, size: 50.0),
                          Text("Call Police",
                              style: new TextStyle(fontSize: 17.0))
                        ],
                      )))),
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.orange,
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.message, size: 50.0),
                          Text("Message Family",
                              style: new TextStyle(fontSize: 17.0))
                        ],
                      )))),
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.orange,
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.location_on, size: 50.0),
                          Text("Nearby Police Stations",
                              style: new TextStyle(fontSize: 17.0))
                        ],
                      )))),
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Emergency()));
                      },
                      splashColor: Colors.orange,
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.call, size: 50.0),
                          Text("Emergency Contacts",
                              style: new TextStyle(fontSize: 17.0))
                        ],
                      ))))
            ],
          )),
      bottomNavigationBar: CurvedNavigationBar(
        items: [Icon(Icons.sos), Icon(Icons.safety_check), Icon(Icons.rule)],
        backgroundColor: Color(0xFFE66216),
      ),
    );
  }
}
