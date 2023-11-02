import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_ui/value.dart';

import 'app_color.dart';

Widget sideDrawer(BuildContext context) {
  return Container(
    color: primaryBackground,
    width: 250,
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(
        top: AppBar().preferredSize.height * 1.3,
        bottom: MediaQuery.of(context).size.height / 3),
    child: ListView(
      children: [
        ListTile(
          title: Text("Post a Seequl", style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (8).png"),
        ),
        ListTile(
          title:
              Text("View your likes", style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (7).png"),
        ),
        ListTile(
          title:
              Text("Your Seequl posts", style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (6).png"),
        ),
        ListTile(
          title: Text("Reference contribution",
              style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Group 614.png"),
        ),
        ListTile(
          title: Text("Hashtag challenges",
              style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (3).png"),
        ),
        ListTile(
          title: Text("Notifications", style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (5).png"),
        ),
        ListTile(
          title: Text("About SeeQul", style: TextStyle(color: textSecondary)),
          onTap: () {},
          leading: Image.asset("assets/Vector (4).png"),
        ),
      ],
    ),
  );
}
