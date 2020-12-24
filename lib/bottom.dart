import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';

class bottombutton extends StatefulWidget {
  @override
  _bottombuttonState createState() => _bottombuttonState();
}

class _bottombuttonState extends State<bottombutton> {
  bool _IsOpeen = true;
  bool _IsRotat = true;

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

          Visibility(
            visible: _IsOpeen,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
                height: 185,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              CupertinoIcons.search,
                              color: blckColor,
                              size: 25,
                            ),
                            Text(
                              "Search by name or phone number",
                            ),
                            SizedBox(
                              width: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Recents",
                        style: TextStyle(
                          fontSize: 20,
                          color: blckColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Visibility(
            visible: !_IsRotat,
            child: Padding(
              padding: EdgeInsets.only(right: 22.5),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      CupertinoIcons.plus,
                      color: blckColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      CupertinoIcons.share,
                      color: blckColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      _IsOpeen = !_IsOpeen;
                      _IsRotat = !_IsRotat;
                      setState(() {});
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.search,
                        color: blckColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //float button
          Padding(
            padding: EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                _IsRotat = !_IsRotat;
                setState(() {});
              },
              child: GestureDetector(
                onTap: () {
                  if (_IsOpeen) _IsOpeen = !_IsOpeen;
                  _IsRotat = !_IsRotat;
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
                          (_IsRotat) ? CupertinoIcons.plus : Icons.close,
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
          ),
        ],
      ),
    );
  }
}
