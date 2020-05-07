import 'package:flutter/material.dart';
import 'package:kamdaily/utility/my_stlye.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next, size: 36.0,),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            showLogo(),
            MyStlye().mySizeBox(),
            userForm(),
            MyStlye().mySizeBox(),
            passwordForm(),
          ],
        ),
      ),
    );
  }

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            labelText: 'User :',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'password :',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget showLogo() => Container(
        width: 120.0,
        child: Image.asset('images/logo.png'),
      );
}
