// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LicenseTerm extends StatefulWidget {
  @override
  _LicenseTermState createState() => _LicenseTermState();
}

class _LicenseTermState extends State<LicenseTerm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LicensePage(
        applicationName: 'Sabah Tourism 2021 License Term',
        applicationIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle),
        ),
        applicationVersion: '1.0.0',
      ),
    );
  }
}
