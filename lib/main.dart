import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/view/bottom.dart';
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
        backgroundColor: darkColor,
        primaryColor: blueColor,
      ),
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
              Bottombutton(),
            ],
          ),
        ),
      ),
    );
  }
}
