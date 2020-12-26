import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';

class bottombutton extends StatefulWidget {
  @override
  _bottombuttonState createState() => _bottombuttonState();
}

class _bottombuttonState extends State<bottombutton> {
  var _Text = TextEditingController();
  bool _IsOpeen = false;
  bool _IsFinis = false;
  bool _UpSizes = false;
  bool _IsRotat = true;
  bool _TextState = true;
  double _Sizes = 185;

  Future<bool> _ButtonBack() {
    _IsRotat = !_IsRotat;
    setState(() {});
  }

  void updateSize(bool Sze) {
    setState(() {
      _UpSizes = Sze;
      print(_UpSizes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          top: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AnimatedOpacity(
                opacity: !_IsRotat ? 1 : 0,
                duration: Duration(milliseconds: 400),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: (!_IsOpeen) ? 22.5 : 15,
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AnimatedOpacity(
                        opacity: !_IsOpeen ? 1 : 0,
                        duration: Duration(milliseconds: 400),
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
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
                          ],
                        ),
                      ),

                      //Search button
                      GestureDetector(
                        onTap: () {
                          _IsOpeen = !_IsOpeen;
                          //_IsRotat = !_IsRotat;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          onEnd: () {
                            _IsFinis = !_IsFinis;
                            setState(() {});
                          },
                          duration: Duration(milliseconds: 400),
                          height: (!_IsOpeen) ? 45 : _Sizes,
                          width: (!_IsOpeen)
                              ? 45
                              : MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular((!_IsOpeen) ? 50 : 18)),
                            color: Colors.white,
                          ),
                          child: (!_IsOpeen)
                              ? Icon(
                                  CupertinoIcons.search,
                                  color: blckColor,
                                )
                              : AnimatedOpacity(
                                  opacity: _IsFinis ? 1.0 : 0.0,
                                  duration: Duration(milliseconds: 400),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 45,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: greyColor,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                child: TextField(
                                                  onChanged: (text) {
                                                    if (text.length == 0)
                                                      _TextState = true;
                                                    else
                                                      _TextState = false;

                                                    setState(() {});
                                                  },
                                                  controller: _Text,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        "Search by name or phone number",
                                                    icon: IconButton(
                                                      onPressed: () {
                                                        _Text.clear();
                                                        _TextState = true;
                                                        setState(() {});
                                                      },
                                                      icon: Icon(
                                                        _TextState
                                                            ? CupertinoIcons
                                                                .search
                                                            : CupertinoIcons
                                                                .clear,
                                                        color: blckColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Recents",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: blckColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    50)),
                                                        color: blueColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      "User N.",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //float button
              WillPopScope(
                onWillPop: _ButtonBack,
                child: Padding(
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
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 60,
                        width: (!_IsOpeen)
                            ? 60
                            : MediaQuery.of(context).size.width,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
