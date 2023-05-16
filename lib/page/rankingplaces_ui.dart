// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:home_interfaces/constant/const.dart';
import 'package:home_interfaces/widget/appbar.dart';
import 'aboutus_ui.dart';
import 'profile_ui.dart';

class LeaderboardUI extends StatefulWidget {
  @override
  _LeaderboardUIState createState() => _LeaderboardUIState();
}

class _LeaderboardUIState extends State<LeaderboardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      extendBodyBehindAppBar: true,
      appBar: appBar(title: 'Ranking Places'),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('ranking')
            .orderBy('placestar', descending: true)
            .snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text('Error');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading ...');
          }
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Card(
                      margin: const EdgeInsets.only(top: 20),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 80,
                                  height: 95,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'img/ranking/${snapshot.data.docs[i].data()['rankpicture']}'),
                                    backgroundColor: Colors.blue,

                                    foregroundColor: Colors.blueAccent,

                                    //backgroundImage: ,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                        '${snapshot.data.docs[i].data()['placename']}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: RatingBar.builder(
                                              initialRating: snapshot
                                                  .data.docs[i]
                                                  .data()['placestar']
                                                  .toDouble(),
                                              minRating: 5,
                                              itemSize: 22,
                                              allowHalfRating: true,
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (double value) {
                                                value;
                                              },
                                            )),
                                        Text(
                                            '${snapshot.data.docs[i].data()['placestar']}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        'Review Amount (${snapshot.data.docs[i].data()['ratingnumber']})',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        '${snapshot.data.docs[i].data()['placerating']}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
          return Text('Loading');
        },
      ),
    );
  }
}
