import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';

class bottombutton extends StatefulWidget {
  @override
  _bottombuttonState createState() => _bottombuttonState();
}

class _bottombuttonState extends State<bottombutton> {
  bool _IsOpeen = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Container(
              height: 185,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
            ),
          ),

          //float button
          Padding(
            padding: EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                _IsOpeen = !_IsOpeen;
                setState(() {});
              },
              child: Container(
                height: 60,
                width: (!_IsOpeen) ? 60 : MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: blueColor,
                ),
                child: (!_IsOpeen)
                    ? Icon(
                        CupertinoIcons.plus,
                        color: Colors.white,
                        size: 32,
                      )
                    : Center(
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
