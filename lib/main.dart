import 'package:flutter/material.dart';
import 'package:simple_store/screen/daftarscreen.dart';
import 'package:simple_store/screen/getstart.dart';

import 'login/mainscreen.dart';

void main() => runApp(Mainapps());

class Mainapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'daftarscreen': (context) => DaftarScreen(),
        'startedscreen': (context) => HomeStarted(),
        'mainScreen': (context) => MainLoginScreen(),
      },
      home: MainLoginScreen(),
      theme: ThemeData(),
    );
  }
}
