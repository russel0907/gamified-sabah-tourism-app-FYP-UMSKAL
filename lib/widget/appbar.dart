import 'package:flutter/material.dart';
import 'package:home_interfaces/constant/const.dart';

AppBar appBar({title}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(color: kTextColor),
    ),
    elevation: 0,
    shadowColor: null,
    backgroundColor: kSecondaryColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
    centerTitle: true,
    automaticallyImplyLeading: false,
  );
}
