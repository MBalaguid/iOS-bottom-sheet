import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';

// ignore: must_be_immutable
class Stories extends StatelessWidget {
  String _nme;
  String _pic;
  Stories(this._nme, this._pic);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: blueColor,
          radius: 23,
          child: CircleAvatar(
            backgroundImage: NetworkImage(_pic),
          ),
        ),
        Text(
          _nme.length >= 6 ? _nme.substring(0, 6) : _nme,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
