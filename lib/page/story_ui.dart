// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names, duplicate_ignore, must_be_immutable, dead_code, prefer_typing_uninitialized_variables, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_interfaces/model/user_model.dart';
import 'package:home_interfaces/page/aboutus_ui.dart';
import 'package:url_launcher/link.dart';

class PlaceDetail extends StatefulWidget {
  PlaceDetail(
      {required this.PlaceName,
      required this.PlaceTitle,
      required this.PlacePicture,
      required this.PlacePicture2,
      required this.PlacePicture3,
      required this.PlaceStory,
      required this.BackgroundPicture,
      required this.Tour,
      required this.Accomodation,
      required this.Travel,
      required this.Reference});

  final String PlaceName;
  final String PlaceTitle;
  final String PlacePicture;
  final String PlacePicture2;
  final String PlacePicture3;
  final String PlaceStory;
  final String BackgroundPicture;
  final String Tour;
  final String Accomodation;
  final String Travel;
  final String Reference;

  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  double rating = 0.0;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  TextEditingController comment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
              Spacer(),
              Center(
                child: Text(
                  "Story",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          )),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 250,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage(
                      "img/background_ui/${widget.BackgroundPicture}"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Center(
                    child: Text(
                      widget.PlaceName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.black,
                      ),
                    ),
                  ),
                  // Solid text as fill.
                  Center(
                    child: Text(
                      widget.PlaceName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 153,
              ),
              Row(
                children: [
                  PictureCollection(
                      pic1: "img/places/${widget.PlacePicture}",
                      pic2: "img/places/${widget.PlacePicture2}",
                      pic3: "img/places/${widget.PlacePicture3}"),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                widget.PlaceTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.PlaceStory,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "More Information",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Time Travel : ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                            width: 230,
                            child: Text(widget.Travel,
                                style: TextStyle(fontSize: 16))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Accomodation : ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                            width: 220,
                            child: Text(widget.Accomodation,
                                style: TextStyle(fontSize: 16))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Tour Packages : ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                            width: 220,
                            child: Text(widget.Tour,
                                style: TextStyle(fontSize: 16))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('To know more',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16)),
                    Link(
                        target: LinkTarget.self,
                        uri: Uri.parse(widget.Reference),
                        builder: (Context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: Text('Click Here',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.redAccent,
                                    decoration: TextDecoration.underline)))),
                  ],
                ),
              ),

              SizedBox(
                height: 60,
              ),
              //STAR RATING
              Text(
                "Rating",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 10,
              ),
              //rating system
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 5,
                      )),
                  height: 300,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                      ),
                      Text('Rating Bar'),
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        updateOnDrag: true,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        onRatingUpdate: (rating) => {
                          setState(() {
                            this.rating = rating;
                          })
                        },
                      ),
                      SizedBox(height: 20.0),
                      Column(
                        children: [
                          Text(
                            'Rating: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$rating'.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.0),
                      Text(
                          'Hey ${loggedInUser.name}, please leave us a comment :)'),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          controller: comment,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Comment',
                            labelText: 'Enter Comment',
                            suffixIcon: MaterialButton(
                              onPressed: () {
                                Map<String, dynamic> data = {
                                  "comment": comment.text,
                                  "rate": rating.toDouble(),
                                  "Name": loggedInUser.name,
                                };
                                FirebaseFirestore.instance
                                    .collection("rating")
                                    .add(data)
                                    .then((data) => {
                                          Fluttertoast.showToast(
                                              msg: "Rate Successful"),
                                        })
                                    .catchError((e) {
                                  Fluttertoast.showToast(msg: e!.message);
                                });
                              },
                              child: Text('Confirm'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class PictureCollection extends StatelessWidget {
  PictureCollection({
    required this.pic1,
    required this.pic2,
    required this.pic3,
  });

  final String pic1;
  final String pic2;
  final String pic3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(pic1),
                  fit: BoxFit.cover,
                  width: 120,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Image(
                      image: AssetImage(pic2),
                      fit: BoxFit.cover,
                      width: 120,
                      height: 100)),
            ),
            Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                    child: Image(
                        image: AssetImage(pic3),
                        fit: BoxFit.cover,
                        width: 120,
                        height: 100))),
            SizedBox(
              width: 10,
            )
          ],
        ));
  }
}
