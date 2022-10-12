// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../core/space.dart';
import '../core/text_style.dart';
import '../model/model.dart';
import '../page/details_page.dart';


class ItemCard extends StatelessWidget {
  final Model model;
  const ItemCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => DetailsPage(model: model)));
      },
      child: Container(
        height: 140.0,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 140.0,
              child: Image.asset(model.image[0]),
            ),
            Container(
              width: 180.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: itemCardHeading,
                  ),
                  SpaceVH(height: 10.0),
                  Text(
                    model.description,
                    maxLines: 3,
                    style: itemCardDes,
                  ),
                  SpaceVH(height: 20.0),
                  Text(
                    model.price,
                    style: itemCardPrice,
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
