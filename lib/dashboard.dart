import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Dash> {
  var imgList = [
    'images/women1.jpg',
   'images/women2.jpg',
    'images/women3.jpg',
  ];
  Random random = Random();
  late Timer timer;
  late String img;
  void initState() {
    super.initState();
    setState(() {
      img=imgList[0];
    });
    //setImg();
  }
  void setImg(){
    int randomNumber=0;
    timer = Timer(const Duration(seconds:2),()  {
      randomNumber=random.nextInt(3);
      setState(() {
        img=imgList[randomNumber];
      });
      //img=imgList[randomNumber];
    });
  }
  //int randomNumber = random.nextInt(100);
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    setImg();
    return Scaffold(
        appBar: AppBar(
          title: Text("RAKSHAQ"),
          backgroundColor: Color(0xFFEB5C0F),
        ),
        backgroundColor: Color(0xFFD8E1E5),
        body: Container(
          decoration:BoxDecoration(
          image:DecorationImage(
            image:AssetImage(img),
            fit:BoxFit.cover,
          ),
        ),
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                    color:Colors.red.withOpacity(0.5),
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
                  color:Colors.blue.withOpacity(0.5),
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
                  color:Colors.teal.withOpacity(0.5),
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
                  color:Colors.grey.withOpacity(0.5),
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
