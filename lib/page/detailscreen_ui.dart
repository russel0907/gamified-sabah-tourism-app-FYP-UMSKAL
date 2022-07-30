import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_interfaces/model/user_model.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  final QueryDocumentSnapshot places;

  // ignore: use_key_in_widget_constructors
  const DetailsScreen({required this.places});

  @override
  // ignore: no_logic_in_create_state
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
    // print(places.storyname.toString());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset(
            'img/background_ui/${widget.places['BackgroundPicture']}',
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff75E2FF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 22),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${widget.places['PlaceName']}, ${widget.places['location']}',
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${widget.places['PlaceTitle']}',
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 34,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8, bottom: 30),
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                itemBuilder: (context, i) {
                                  return Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Card(
                                          semanticContainer: true,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Image.asset(
                                            'img/places/${widget.places['PlacePicture3']}',
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15.0),
                                        child: Card(
                                          semanticContainer: true,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Image.asset(
                                            'img/places/${widget.places['PlacePicture2']}',
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15.0),
                                        child: Card(
                                          semanticContainer: true,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Image.asset(
                                            'img/places/${widget.places['PlacePicture']}',
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Story',
                            style: TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 30, right: 30),
                          child: Text(
                            '${widget.places['PlaceStory']}',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                height: 1.7,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'More Information',
                            style: TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(
                                  'img/icon/navigation-outline.svg',
                                  color: const Color(0xff244D61),
                                ),
                              ),
                              const Text(
                                'Time Travel: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2b2b2b)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${widget.places['Travel']}',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(
                                  'img/icon/home-outline.svg',
                                  color: const Color(0xff244D61),
                                ),
                              ),
                              const Text(
                                'Accomodation: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2b2b2b)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${widget.places['Accomodation']}',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(
                                  'img/icon/person-hiking-solid.svg',
                                  width: 20,
                                  matchTextDirection: true,
                                  color: const Color(0xff244D61),
                                ),
                              ),
                              const Text(
                                'Tours Package: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2b2b2b)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8, bottom: 30),
                          child: Text(
                            '${widget.places['Tour']}',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'To Know More',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Monserrat',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2b2b2b)),
                          ),
                        ),
                        Link(
                            target: LinkTarget.self,
                            uri: Uri.parse(widget.places['Reference']),
                            // ignore: non_constant_identifier_names
                            builder: (Context, followLink) => GestureDetector(
                                onTap: followLink,
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 8.0, right: 8, bottom: 30, top: 0),
                                  child: Text('Click Here',
                                      style: TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontSize: 18,
                                          color: Color(0xff2b2b2b),
                                          decoration: TextDecoration.none)),
                                ))),
                        // Padding(
                        //   padding: const EdgeInsets.all(8),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         color: const Color(0xffebecee),
                        //         borderRadius: const BorderRadius.all(
                        //           Radius.circular(10),
                        //         ),
                        //         border: Border.all(
                        //           color: const Color(0xffebecee),
                        //           width: 2,
                        //         )),
                        //     height: MediaQuery.of(context).size.height * 0.7,
                        //     width: 400,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: <Widget>[
                        //         const Padding(
                        //           padding: EdgeInsets.all(8.0),
                        //           child: Center(
                        //             child: Text(
                        //               'Rating',
                        //               textAlign: TextAlign.left,
                        //               style: TextStyle(
                        //                   fontFamily: 'Monserrat',
                        //                   fontSize: 20,
                        //                   fontWeight: FontWeight.bold,
                        //                   color: Color(0xff244f62)),
                        //             ),
                        //           ),
                        //         ),
                        //         RatingBar.builder(
                        //           initialRating: 1,
                        //           minRating: 1,
                        //           updateOnDrag: true,
                        //           direction: Axis.horizontal,
                        //           allowHalfRating: false,
                        //           itemCount: 5,
                        //           itemPadding: const EdgeInsets.symmetric(
                        //               horizontal: 4.0),
                        //           itemBuilder: (context, _) => const Icon(
                        //             Icons.star,
                        //             color: Color(0xffFFD700),
                        //           ),
                        //           onRatingUpdate: (rating) => {
                        //             setState(() {
                        //               this.rating = rating;
                        //             })
                        //           },
                        //         ),
                        //         Column(
                        //           children: [
                        //             const Padding(
                        //               padding: EdgeInsets.all(8.0),
                        //               child: Center(
                        //                 child: Text(
                        //                   'Rating: ',
                        //                   textAlign: TextAlign.left,
                        //                   style: TextStyle(
                        //                       fontFamily: 'Monserrat',
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.normal,
                        //                       color: Color(0xff244f62)),
                        //                 ),
                        //               ),
                        //             ),
                        //             Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: Center(
                        //                 child: Text(
                        //                   '$rating'.toString(),
                        //                   textAlign: TextAlign.left,
                        //                   style: const TextStyle(
                        //                       fontFamily: 'Monserrat',
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.bold,
                        //                       color: Color(0xff244f62)),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Center(
                        //             child: Text(
                        //               'Hey ${loggedInUser.name}, please leave us a comment :)',
                        //               textAlign: TextAlign.center,
                        //               style: const TextStyle(
                        //                   fontFamily: 'Monserrat',
                        //                   fontSize: 17,
                        //                   fontWeight: FontWeight.bold,
                        //                   color: Color(0xff244f62)),
                        //             ),
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 16.0),
                        //           child: TextFormField(
                        //             maxLines: 5,
                        //             controller: comment,
                        //             keyboardType: TextInputType.text,
                        //             decoration: const InputDecoration(
                        //               border: OutlineInputBorder(),
                        //               hintText: 'Enter Comment',
                        //             ),
                        //           ),
                        //         ),
                        //         MaterialButton(
                        //           onPressed: () {
                        //             Map<String, dynamic> data = {
                        //               "comment": comment.text,
                        //               "rate": rating.toDouble(),
                        //               "Name": loggedInUser.name,
                        //             };
                        //             FirebaseFirestore.instance
                        //                 .collection("rating")
                        //                 .add(data)
                        //                 .then((data) => {
                        //                       Fluttertoast.showToast(
                        //                           msg: "Rate Successful"),
                        //                     })
                        //                 .catchError((e) {
                        //               Fluttertoast.showToast(msg: e!.message);
                        //             });
                        //           },
                        //           child: const Text('SUBMIT',
                        //               style: TextStyle(
                        //                   fontFamily: 'Monserrat',
                        //                   fontWeight: FontWeight.bold,
                        //                   fontSize: 20,
                        //                   color: Color(0xff244f62),
                        //                   decoration: TextDecoration.none)),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
