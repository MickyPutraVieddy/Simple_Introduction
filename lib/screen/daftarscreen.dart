import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DaftarScreen extends StatelessWidget {
  final List<Container> mycontainer = [
    Container(
      height: 100,
      width: 100,
      color: Colors.black,
    ),
    new Container(
      height: 100,
      width: 100,
      color: Colors.red,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
