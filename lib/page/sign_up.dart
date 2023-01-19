// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace, body_might_complete_normally_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_interfaces/main.dart';
import 'package:home_interfaces/model/user_model.dart';
import 'loginscreen_ui.dart';

//color gradient
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool LicenseTerm = false;

  final _auth = FirebaseAuth.instance;
  //form key
  final _formKey = GlobalKey<FormState>();

  final NameEditingController = TextEditingController();
  final EmailEditingController = TextEditingController();
  final PhoneNumberEditingController = TextEditingController();
  final PasswordEditingController = TextEditingController();
  final ConfirmPasswordEditingController = TextEditingController();

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          child: Stack(
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
              ),
              TextFormField(
                controller: NameEditingController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  RegExp regex = RegExp(r'^.{3,}$');
                  if (value!.isEmpty) {
                    return ("Name Cannot be Empty");
                  }

                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Name (Min. 3 Characters)");
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                    hintText: '   Name',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          child: Stack(
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
              ),
              TextFormField(
                controller: EmailEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("Please Enter Your Email");
                  }
                  //reg expression for email validation
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return ("Please Enter Valid Email");
                  }
                  return null;
                },
                onSaved: (value) {
                  EmailEditingController.text = value!;
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: '   Email',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPhoneNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Phone Number',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          child: Stack(
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
              ),
              TextFormField(
                controller: PhoneNumberEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("Please Enter Your Phone Number");
                  }
                  //expression for phone number validation
                  if (value.length != 10 && value.length != 11) {
                    return ("Phone Number Must be of 10 digits");
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                onSaved: (value) {
                  PhoneNumberEditingController.text = value!;
                },
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    hintText: '   Phone Number',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          child: Stack(
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
              ),
              TextFormField(
                controller: PasswordEditingController,
                validator: (value) {
                  RegExp regex = RegExp(r'^.{6,}$');
                  if (value!.isEmpty) {
                    return ("Password is required for login");
                  }

                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Password (Min. 6 Characters)");
                  }
                },
                onSaved: (value) {
                  PasswordEditingController.text = value!;
                },
                obscureText: true,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: '   Password',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirm Password',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          child: Stack(
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
              ),
              TextFormField(
                controller: ConfirmPasswordEditingController,
                validator: (value) {
                  if (ConfirmPasswordEditingController.text !=
                      PasswordEditingController.text) {
                    return ("Password Dont Match");
                  }
                  return null;
                },
                onSaved: (value) {
                  ConfirmPasswordEditingController.text = value!;
                },
                obscureText: true,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: '   CPassword',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildLicenceTerm() {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: LicenseTerm,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  LicenseTerm = value!;
                });
              },
            ),
          ),
          Text(
            'I accept all the License Term',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildRegisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          signUp(EmailEditingController.text, PasswordEditingController.text);
        },
        child: Text(
          'Register',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        GradientColors.aqua[1],
                        GradientColors.malibuBeach[1],
                        GradientColors.malibuBeach[0],
                      ])),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70,
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image(
                                width: 180,
                                image: AssetImage('img/logo/logo.png')),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          buildName(),
                          SizedBox(height: 20),
                          buildEmail(),
                          SizedBox(height: 20),
                          buildPhoneNumber(),
                          SizedBox(height: 20),
                          buildPassword(),
                          SizedBox(height: 20),
                          buildCPassword(),
                          buildLicenceTerm(),
                          buildRegisterBtn(),
                          Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text(
                                    "Sabah Tourism",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                      "@2021 Sabah Tourism App. All Right Reserved",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.italic)),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))));
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    //calling firestore
    //calling usermodel
    //send value

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    //write all value
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = NameEditingController.text;
    userModel.phonenumber = PhoneNumberEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account Created Successfully :)");

    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => AppUI()), (route) => false);
  }
}
