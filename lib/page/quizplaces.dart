// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:home_interfaces/page/quizcrockerrange_ui.dart';
import 'package:home_interfaces/page/quizdanumvalley_ui.dart';
import 'package:home_interfaces/page/quizdesacattledairyfarm_ui.dart';
import 'package:home_interfaces/page/quizimbakcanyon_ui.dart';
import 'package:home_interfaces/page/quizkinabalupark_ui.dart';
import 'package:home_interfaces/page/quizkiuluvalley_ui.dart';
import 'package:home_interfaces/page/quizkokolhill_ui.dart';
import 'package:home_interfaces/page/quizmaliaubasin_ui.dart';
import 'package:home_interfaces/page/quizselinganisland_ui.dart';
import 'package:home_interfaces/page/quizsipadanmabulisland_ui.dart';
import 'package:home_interfaces/page/quizsukaurainforestlodge_ui.dart';
import 'package:home_interfaces/page/quiztabinwildlife_ui.dart';

import 'aboutus_ui.dart';

class QuizUI extends StatefulWidget {
  @override
  _QuizUIState createState() => _QuizUIState();
}

class _QuizUIState extends State<QuizUI> {
  final tourRef = FirebaseFirestore.instance.collection('places');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueAccent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsUI()));
                  },
                  icon: Image.asset('img/logo/logo.png'),
                  iconSize: 50,
                ),
                Spacer(),
                Center(
                  child: Text(
                    "Quiz",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
                Spacer(),
                Spacer(),
              ],
            )),
        body: StreamBuilder(
          stream: tourRef.snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('Error');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, i) {
                    return Container(
                      child: Text(
                        snapshot.data.docs[i]['PlaceName'],
                      ),
                    );
                  });
            }
            return Text('Loading');
          },
        ));
  }
}
