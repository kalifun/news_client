import 'package:flutter/material.dart';
import 'package:news_client/common/utils/utils.dart';
import 'package:news_client/common/values/values.dart';

Widget btnThirdSocialWidget(String fileName) {
  return Container(
    width: duSetWidth(88),
    height: duSetHeight(44),
    child: FlatButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
          side: Borders.primaryBoder, borderRadius: Radii.k6pxRadius),
      child: Image.asset(
        "assets/images/icons-$fileName.png",
      ),
    ),
  );
}
