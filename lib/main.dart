import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/bottom.dart';
import 'package:iOSBottomSheet/const.dart';

void main() {
  runApp(iOSheet());
}

class iOSheet extends StatefulWidget {
  @override
  _iOSheetState createState() => _iOSheetState();
}

class _iOSheetState extends State<iOSheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkColor,
        body: Container(
          child: Stack(
            children: [
              //
              ListView(
                children: [
                  Container(
                    height: 500,
                    color: blueColor,
                  ),
                  Container(
                    height: 1000,
                    color: blckColor,
                  ),
                ],
              ),
              bottombutton(),
            ],
          ),
        ),
      ),
    );
  }
}
