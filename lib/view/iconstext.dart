import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Icontext extends StatelessWidget {
  String _svg;
  String _txt;
  Icontext(this._svg, this._txt);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(_svg),
        SizedBox(
          height: 5,
        ),
        Text(
          _txt,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
