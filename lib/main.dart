import 'package:flutter/material.dart';
import 'package:kamdaily/screen/authen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: 'Kam Daily',
      home: Authen(),
    );
  }
}
