import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Posts extends StatelessWidget {
  String _img;
  Posts(this._img);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_img),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
