// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:home_interfaces/constant/const.dart';
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
import 'package:home_interfaces/widget/appbar.dart';

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
        backgroundColor: kPrimaryColor,
        appBar: appBar(title: 'Quiz'),
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
              return Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('LIST QUIZES'),
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.docs.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200,
                                  color: kSecondaryColor,
                                  child: Text(
                                    snapshot.data.docs[i]['PlaceName'],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: kSecondaryColor,
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          print('Feedback Pressed');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizCrockerRangeUI()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Icon(
                                Icons.feed,
                                color: kTextColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Feedback',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return Text('Loading');
          },
        ));
  }
}
