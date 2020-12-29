import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/pages/home.dart';
import 'package:iOSBottomSheet/const.dart';

void main() {
  runApp(IOSheet());
}

class IOSheet extends StatefulWidget {
  @override
  _IOSheetState createState() => _IOSheetState();
}

class _IOSheetState extends State<IOSheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blueColor,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}
