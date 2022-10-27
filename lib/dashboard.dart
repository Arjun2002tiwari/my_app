import 'package:flutter/material.dart';

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
          title: Text("RAKSHAQ"),
          backgroundColor: Color(0xFFEB5C0F),
        ),
        backgroundColor: Color(0xFFD8E1E5),
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
                        onTap: () {},
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
            )));
  }
}
