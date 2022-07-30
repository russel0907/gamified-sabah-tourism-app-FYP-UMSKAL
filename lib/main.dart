// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names, prefer_const_constructors_in_immutables, sized_box_for_whitespace, camel_case_types, unused_import, avoid_web_libraries_in_flutter, equal_keys_in_map, deprecated_member_use

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:home_interfaces/page/homebeforelogin_ui.dart';
import 'package:home_interfaces/page/loginscreen_ui.dart';
import 'package:home_interfaces/page/databasestorytesting_ui.dart';
import 'package:home_interfaces/page/topplaces.dart';
import 'page/story_ui.dart';
import 'page/rankingplaces_ui.dart';
import 'page/quiz_ui.dart';
import 'page/qrcode_ui.dart';
import 'page/profile_ui.dart';
import 'page/aboutus_ui.dart';
import 'dart:ffi';

import 'page/searchplaces_ui.dart';

import 'page/loginscreen_ui.dart';

//photo view widget
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome",
      home: WelcomeUI(),
      routes: <String, WidgetBuilder>{
        '/WelcomeUI': (BuildContext context) => WelcomeUI(),
        '/AppUI': (BuildContext context) => AppUI(),
        '/AppbeforeloginUI': (BuildContext context) => AppbeforeloginUI(),
        '/quiz_ui': (BuildContext context) => QuizUI(),
        '/StoryUI': (BuildContext context) => LeaderboardUI(),
        '/LoginUI': (BuildContext context) => LoginScreen(),
        '/ProfileUI': (BuildContext context) => ProfilePageUI(),
      }));
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

class WelcomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GradientColors.malibuBeach[1],
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    image: DecorationImage(
                        image: AssetImage("img/collage.jpg"), fit: BoxFit.fill),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'SABAH TOURISM',
                              style: TextStyle(
                                wordSpacing: 20,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5
                                  ..color = GradientColors.black[0],
                              ),
                            ),
                          ),
                        ),
                        // Solid text as fill.
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text(
                              'SABAH TOURISM',
                              style: TextStyle(
                                wordSpacing: 20,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Center(
                  child: Text("WELCOME !",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Now, lets get started",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  width: 170,
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.blueGrey),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        primary: Colors.blueAccent,
                        onPrimary: Colors.black),
                    child: Text(
                      'Search Places',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/AppbeforeloginUI');
                    },
                  ), //RaisedButton
                ),
                Container(
                  width: 170,
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.blueGrey),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        primary: Colors.blue[200],
                        onPrimary: Colors.black),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/LoginUI');
                    },
                  ), //RaisedButton
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Column(
                  children: [
                    Text(
                      "Sabah Tourism",
                      style:
                          TextStyle(fontSize: 11, fontStyle: FontStyle.italic),
                    ),
                    Text("@2021 Sabah Tourism App. All Right Reserved",
                        style: TextStyle(
                            fontSize: 11, fontStyle: FontStyle.italic)),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

class AppUI extends StatefulWidget {
  @override
  _AppUIState createState() => _AppUIState();
}

class _AppUIState extends State<AppUI> {
  int currentIndex = 0;
  final screens = [
    PlaceUI(),
    QuizUI(),
    QRScannerUI(),
    LeaderboardUI(),
    ProfilePageUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff75E2FF),
        selectedItemColor: Color(0xff2b2b2b),
        unselectedItemColor: Colors.black38,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Rank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
