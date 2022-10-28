import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Police extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Police> {
  get FlutterPhoneDirectCaller => null;

  @override
  Widget buildButton(BuildContext context) {}

  Widget buildButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
        textStyle: TextStyle(fontSize: 25),
      ),
      child: Text("Call"),
      onPressed: () async {
        // launch('tel:100');
        await FlutterPhoneDirectCaller.callNumber("100");
      },
    );
  }
}
