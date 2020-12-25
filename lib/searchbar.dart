import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'const.dart';

class searchbar extends StatefulWidget {
  String _title;
  searchbar(this._title);
  @override
  _searchbarState createState() => _searchbarState(this._title);
}

class _searchbarState extends State<searchbar> {
  String _Title;
  _searchbarState(this._Title);
  var _Text = TextEditingController();
  bool _TextState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 15),
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
                hintText: _Title,
                icon: IconButton(
                  onPressed: () {
                    _Text.clear();
                    _TextState = true;
                    setState(() {});
                  },
                  icon: Icon(
                    _TextState ? CupertinoIcons.search : CupertinoIcons.clear,
                    color: blckColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: blueColor,
                  ),
                ),
                Text(
                  "User N.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
