// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_interfaces/model/user_model.dart';

class FeedbackBtn extends StatefulWidget {
  @override
  _FeedbackBtnState createState() => _FeedbackBtnState();
}

class _FeedbackBtnState extends State<FeedbackBtn> {
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueAccent,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Feedback",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 5,
                    )),
                height: 400,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Text('Comment'),
                    SizedBox(height: 20.0),
                    Text('Name: ${loggedInUser.name}'),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.0),
                      child: TextFormField(
                        maxLines: 10,
                        controller: comment,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Comment',
                          labelText: 'Enter Comment',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 400,
                  child: Card(
                    elevation: 7,
                    child: MaterialButton(
                      onPressed: () {
                        Map<String, dynamic> data = {
                          "comment": comment.text,
                          "Name": loggedInUser.name,
                        };
                        FirebaseFirestore.instance
                            .collection("feedback")
                            .add(data)
                            .then((data) => {
                                  Fluttertoast.showToast(
                                      msg:
                                          "RATE SUCCESS! THANKS FOR THE FEEDBACK :)"),
                                })
                            .catchError((e) {
                          Fluttertoast.showToast(msg: e!.message);
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Confirm'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
