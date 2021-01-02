import 'package:flutter/material.dart';
import 'package:iOSBottomSheet/const.dart';
import 'package:iOSBottomSheet/model/account.dart';
import 'package:iOSBottomSheet/view/bottom.dart';
import 'package:iOSBottomSheet/view/post.dart';
import 'package:iOSBottomSheet/view/stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //
        /*ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: blueColor,
                    radius: 24,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(acc[0].pics),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    //child: Stories("Add", ""),
                  ),
                  for (int i = 0; i < acc.length; i++)
                    Padding(
                      padding: (i == 0)
                          ? EdgeInsets.only(right: 10, left: 10)
                          : EdgeInsets.only(right: 10),
                      child: Stories(acc[i].name, acc[i].pics),
                    ),
                ],
              ),
            ),
            for (int i = 0; i < acc.length; i++) Posts(acc[i].pics),
          ],
        ),*/
        Bottombutton(),
      ],
    );
  }
}
