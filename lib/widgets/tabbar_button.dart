// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:furnitureui/core/color.dart';
import 'package:furnitureui/core/text_style.dart';

import '../data/tab_bar_menu.dart';


class TabBarButton extends StatefulWidget {
  const TabBarButton({Key? key}) : super(key: key);

  @override
  _TabBarButtonState createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < tabBarMenu.length; i++)
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                id = tabBarMenu[i].id;
              });
            },
            child: Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: id == i ? gray : Colors.transparent,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Text(
                  tabBarMenu[i].name,
                  style: id == i ? tabButtonS : tabButtonU,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
