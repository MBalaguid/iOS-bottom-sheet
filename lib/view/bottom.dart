import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/model/account.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:iOSBottomSheet/view/iconstext.dart';

class Bottombutton extends StatefulWidget {
  @override
  _BottombuttonState createState() => _BottombuttonState();
}

class _BottombuttonState extends State<Bottombutton> {
  var _text = TextEditingController();
  bool _isOpeen = false;
  bool _isFinis = false;
  bool _upSizes = false;
  bool _isiplus = false;
  bool _finplus = false;
  bool _isRotat = true;
  bool _textState = true;
  double _sizes = 185;
  var _svgls = [
    "assets/note.svg",
    "assets/docs.svg",
    "assets/file.svg",
    "assets/cam.svg",
    "assets/pics.svg",
    "assets/acc.svg"
  ];
  var _txtls = ["Note", "Document", "File", "Camera", "Photos", "Contact"];

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
                        opacity: _isRotat ? 0 : 1,
                        duration: _isRotat
                            ? Duration(microseconds: 800)
                            : Duration(milliseconds: 800),
                        child: //plusButton
                            AnimatedOpacity(
                          opacity: !_isOpeen ? 1 : 0,
                          duration: _isOpeen
                              ? Duration(milliseconds: 300)
                              : Duration(milliseconds: 600),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _isiplus = !_isiplus;
                                  setState(() {});
                                },
                                child: AnimatedContainer(
                                  onEnd: () {
                                    _finplus = !_finplus;
                                    setState(() {});
                                  },
                                  duration: Duration(milliseconds: 400),
                                  height: _isiplus ? 210 : 45,
                                  width: _isiplus
                                      ? MediaQuery.of(context).size.width
                                      : 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular((!_isiplus) ? 50 : 18)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: _isiplus
                                      ? AnimatedOpacity(
                                          opacity: _finplus ? 1 : 0,
                                          duration: Duration(milliseconds: 400),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Add item".toUpperCase(),
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        for (int i = 0;
                                                            i < 3;
                                                            i++)
                                                          Icontext(_svgls[i],
                                                              _txtls[i]),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        for (int i = 3;
                                                            i < 6;
                                                            i++)
                                                          Icontext(_svgls[i],
                                                              _txtls[i]),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Icon(
                                          CupertinoIcons.plus,
                                          color: blckColor,
                                        ),
                                ),
                              ),
                              Visibility(
                                visible: !_isiplus,
                                child: SizedBox(
                                  height: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Visibility(
                        visible: !_isiplus,
                        child: AnimatedOpacity(
                          opacity: _isRotat ? 0 : 1,
                          duration: _isRotat
                              ? Duration(microseconds: 400)
                              : Duration(milliseconds: 400),
                          child: //ShareButton
                              AnimatedOpacity(
                            opacity: !_isOpeen ? 1 : 0,
                            duration: (!_isOpeen)
                                ? Duration(milliseconds: 400)
                                : Duration(milliseconds: 500),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
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
                        ),
                      ),

                      //Search button
                      Visibility(
                        visible: !_isiplus,
                        child: GestureDetector(
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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(12)),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: TextField(
                                                    onChanged: (text) {
                                                      acc.clear();
                                                      for (int i = 0;
                                                          i < ac.length;
                                                          i++)
                                                        if (ac[i]
                                                            .name
                                                            .toLowerCase()
                                                            .startsWith(_text
                                                                .text
                                                                .toLowerCase()))
                                                          acc.add(ac[i]);

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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      padding: EdgeInsets.only(
                                                          top: 0),
                                                      itemCount: acc.length,
                                                      scrollDirection:
                                                          (_sizes > 185)
                                                              ? Axis.vertical
                                                              : Axis.horizontal,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return //cardView
                                                            Padding(
                                                          padding: (_sizes >
                                                                  185)
                                                              ? EdgeInsets.only(
                                                                  bottom: 5)
                                                              : EdgeInsets.only(
                                                                  right: 5),
                                                          child: Container(
                                                            child:
                                                                (!(_sizes >
                                                                        185))
                                                                    ? Column(
                                                                        children: [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                25,
                                                                            backgroundImage:
                                                                                NetworkImage(acc[index].pics) ?? blueColor,
                                                                          ),
                                                                          Text(
                                                                            (acc[index].name.length < 7)
                                                                                ? acc[index].name
                                                                                : acc[index].name.substring(0, 7) ?? acc[index].name,
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    : Row(
                                                                        children: [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                25,
                                                                            backgroundImage:
                                                                                NetworkImage(acc[index].pics),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 15),
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  acc[index].name,
                                                                                  style: TextStyle(
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  acc[index].subn,
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

                        if (_isiplus) _isiplus = !_isiplus;
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
