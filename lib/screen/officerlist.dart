import 'package:flutter/material.dart';

class OfficerList extends StatefulWidget {
  @override
  _OfficerListState createState() => _OfficerListState();
}

class _OfficerListState extends State<OfficerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายชื่อพนักงาน'),
      ),
    );
  }
}
