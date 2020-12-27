import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';

class Bottombutton extends StatefulWidget {
  @override
  _BottombuttonState createState() => _BottombuttonState();
}

class _BottombuttonState extends State<Bottombutton> {
  var _text = TextEditingController();
  bool _isOpeen = false;
  bool _isFinis = false;
  bool _upSizes = false;
  bool _isRotat = true;
  bool _textState = true;
  double _sizes = 185;

  Future<bool> _buttonBack() {
    if (_isOpeen) _isOpeen = !_isOpeen;
    if (_isRotat) return Future.value(true);
    if (_sizes > 185) {
      _sizes = 185;
      _isFinis = true;
    }
    _isRotat = !_isRotat;
    setState(() {});
    return Future.value(false);
  }

  void updateSize(bool sze) {
    setState(() {
      _upSizes = sze;
      print(_upSizes);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AnimatedOpacity(
                opacity: !_isRotat ? 1 : 0,
                duration: Duration(milliseconds: 400),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: (!_isOpeen) ? 22.5 : 15,
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AnimatedOpacity(
                        opacity: !_isOpeen ? 1 : 0,
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
                          _isOpeen = !_isOpeen;
                          //_isRotat = !_isRotat;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          onEnd: () {
                            _isFinis = !_isFinis;
                            setState(() {});
                          },
                          duration: (!_isOpeen)
                              ? Duration(milliseconds: 300)
                              : Duration(milliseconds: 500),
                          height: (!_isOpeen) ? 45 : _sizes,
                          width: (!_isOpeen)
                              ? 45
                              : MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular((!_isOpeen) ? 50 : 18)),
                            color: Colors.white,
                          ),
                          child: (!_isOpeen)
                              ? Icon(
                                  CupertinoIcons.search,
                                  color: blckColor,
                                )
                              : AnimatedOpacity(
                                  opacity:
                                      (_isFinis || _sizes > 185) ? 1.0 : 0.0,
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
                                                      _textState = true;
                                                    else
                                                      _textState = false;
                                                    if (text.length > 0)
                                                      _sizes = MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .height -
                                                          EdgeInsets.fromWindowPadding(
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .window
                                                                      .viewInsets,
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .window
                                                                      .devicePixelRatio)
                                                              .bottom -
                                                          200;
                                                    else
                                                      _sizes = 185;

                                                    setState(() {});
                                                  },
                                                  controller: _text,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        "Search by name or phone number",
                                                    icon: IconButton(
                                                      onPressed: () {
                                                        _text.clear();
                                                        _textState = true;
                                                        setState(() {});
                                                      },
                                                      icon: Icon(
                                                        _textState
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

                                                //CardScroll
                                                AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  height: (_sizes > 185)
                                                      ? _sizes - 118
                                                      : 67,
                                                  child: ListView.builder(
                                                    padding:
                                                        EdgeInsets.only(top: 0),
                                                    itemCount: 10,
                                                    scrollDirection:
                                                        (_sizes > 185)
                                                            ? Axis.vertical
                                                            : Axis.horizontal,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return //cardView
                                                          Padding(
                                                        padding: (_sizes > 185)
                                                            ? EdgeInsets.only(
                                                                bottom: 5)
                                                            : EdgeInsets.only(
                                                                right: 5),
                                                        child: Container(
                                                          child:
                                                              (!(_sizes > 185))
                                                                  ? Column(
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(50)),
                                                                            color:
                                                                                blueColor,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          ("_UserName".length < 7)
                                                                              ? "_UserName"
                                                                              : "_UserName".substring(0, 7) ?? "User N.",
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    )
                                                                  : Row(
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(50)),
                                                                            color:
                                                                                blueColor,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 15),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                "_UserName",
                                                                                style: TextStyle(
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "Hello World",
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                        ),
                                                      );
                                                    },
                                                  ),
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
                onWillPop: _buttonBack,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: () {
                      _isRotat = !_isRotat;
                      setState(() {});
                    },
                    child: GestureDetector(
                      onTap: () {
                        if (_isOpeen) _isOpeen = !_isOpeen;
                        _isRotat = !_isRotat;
                        setState(() {});
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 60,
                        width: (!_isOpeen)
                            ? 60
                            : MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: blueColor,
                        ),
                        child: (!_isOpeen)
                            ? Icon(
                                (_isRotat) ? CupertinoIcons.plus : Icons.close,
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
