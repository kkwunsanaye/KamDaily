import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kamdaily/utility/my_stlye.dart';
import 'package:kamdaily/utility/normal_dialog.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  //  Field
  String user, password;

  Future<void> checkAuthen() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth
        .signInWithEmailAndPassword(email: user, password: password)
        .then((value) => print('Authen Success'))
        .catchError((value) {
          String title = value.code;
          String  message = value.message;
          normalDialog(context, title, message);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          size: 36.0,
        ),
        onPressed: () {
          if (user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normalDialog(context, 'Have Space', 'Plaease Fill Every Blank');
          } else {
            checkAuthen();
          }
        },
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: <Color>[Colors.white, Colors.green.shade900],
          radius: 1.0,
        )),
        child: Center(
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
      ),
    );
  }

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => user = value.trim(),
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
          obscureText: true,
          onChanged: (value) => password = value.trim(),
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
