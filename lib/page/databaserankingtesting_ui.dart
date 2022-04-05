// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, unused_import, avoid_web_libraries_in_flutter, import_

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:home_interfaces/page/aboutus_ui.dart';
import 'package:home_interfaces/page/profile_ui.dart';

class RankingPlacesUI extends StatefulWidget {
  @override
  _RankingPlacesUIState createState() => _RankingPlacesUIState();
}

class _RankingPlacesUIState extends State<RankingPlacesUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Center(
                child: Text(
                  "Ranking Places",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePageUI()));
                },
              ),
            ],
          )),
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
                    width: MediaQuery.of(context).size.width,
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
                                  width: 55,
                                  height: 55,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'img/ranking/${snapshot.data.docs[i].data()['rankpicture']}'),
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.blueAccent,
                                    //backgroundImage: ,
                                  ),
                                ),
                                SizedBox(width: 8),
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
                                              itemSize: 25,
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
