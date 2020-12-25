import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:iOSBottomSheet/searchbar.dart';

class bottombutton extends StatefulWidget {
  @override
  _bottombuttonState createState() => _bottombuttonState();
}

class _bottombuttonState extends State<bottombutton> {
  bool _IsOpeen = false;
  bool _IsFinis = false;
  bool _UpSizes = false;
  bool _IsRotat = true;
  double _Sizes = 185;

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
                                        child: GestureDetector(
                                          onTap: () {
                                            _UpSizes = !_UpSizes;

                                            // if (_UpSizes)
                                            //   _Sizes = MediaQuery.of(context)
                                            //       .size
                                            //       .height;
                                            // else
                                            //   _Sizes = 185;
                                            setState(() {});
                                          },
                                          child: searchbar(
                                            "Search by name or phone number",
                                          ),
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
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      height: 60,
                      width:
                          (!_IsOpeen) ? 60 : MediaQuery.of(context).size.width,
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
        ),
      ],
    );
  }
}
