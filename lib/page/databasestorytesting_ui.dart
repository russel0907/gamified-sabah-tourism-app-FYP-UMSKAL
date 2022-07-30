// // ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:home_interfaces/model/story_model.dart';

// class SimpleStory extends StatefulWidget {
//   @override
//   _SimpleStoryState createState() => _SimpleStoryState();
// }

// class _SimpleStoryState extends State<SimpleStory> {
//   StoryModel story = StoryModel();
//   @override
//   void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("places")
//         .doc('9Tm841QJW0iT9APJ6WRe')
//         .get()
//         .then((value) {
//       story = StoryModel.fromMap(value.data());
//       print(story);
//       setState(() {});
//     });
//   }

//   String? userRating;
//   double rating = 0.0;

//   TextEditingController comment = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         // ignore: prefer_const_constructors
//         title: Center(
//           // ignore: prefer_const_constructors
//           child: Text(
//             "Sabah Tourism",
//             style: TextStyle(color: Colors.white, fontSize: 25.0),
//           ),
//         ),
//         actions: [
//           Icon(
//             Icons.person,
//             size: 50.0,
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Stack(children: [
//           Container(
//             height: 250,
//             alignment: Alignment.topCenter,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//                       "img/background_ui/${story.storybackgroundpicture}"),
//                   fit: BoxFit.fitWidth),
//             ),
//           ),
//           Column(
//             children: [
//               SizedBox(
//                 height: 60,
//               ),
//               Stack(
//                 children: <Widget>[
//                   // Stroked text as border.
//                   Center(
//                     child: Text(
//                       '${story.storyname}',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         wordSpacing: 2,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 35,
//                         foreground: Paint()
//                           ..style = PaintingStyle.stroke
//                           ..strokeWidth = 3
//                           ..color = Colors.black,
//                       ),
//                     ),
//                   ),
//                   // Solid text as fill.
//                   Center(
//                     child: Text(
//                       '${story.storyname}',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         wordSpacing: 2,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 35,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 153,
//               ),
//               Row(
//                 children: [
//                   PictureCollection(
//                       pic1: "img/places/${story.storypicture1}",
//                       pic2: "img/places/${story.storypicture2}",
//                       pic3: "img/places/${story.storypicture3}"),
//                 ],
//               ),
//               Padding(padding: EdgeInsets.only(top: 10)),
//               Text(
//                 '${story.storytitle}',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.w800,
//                     fontStyle: FontStyle.italic),
//               ),
//               Padding(padding: EdgeInsets.only(top: 5)),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   '${story.storydesc}',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "Rating",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.w800,
//                     fontStyle: FontStyle.normal),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white60,
//                     border: Border.all(
//                       color: Colors.blueAccent,
//                       width: 5,
//                     )),
//                 height: 300,
//                 width: 400,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 40.0,
//                     ),
//                     Text('Rating Bar'),
//                     RatingBar.builder(
//                       initialRating: 1,
//                       minRating: 1,
//                       updateOnDrag: true,
//                       direction: Axis.horizontal,
//                       allowHalfRating: false,
//                       itemCount: 5,
//                       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                       itemBuilder: (context, _) => Icon(
//                         Icons.star,
//                         color: Colors.orange,
//                       ),
//                       onRatingUpdate: (rating) => {
//                         setState(() {
//                           this.rating = rating;
//                         })
//                       },
//                     ),
//                     SizedBox(height: 20.0),
//                     Column(
//                       children: [
//                         Text(
//                           'Rating: ',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           '$rating'.toString(),
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 40.0),
//                     Text('Comment'),
//                     SizedBox(height: 20.0),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16.0),
//                       child: TextFormField(
//                         controller: comment,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Enter Comment',
//                           labelText: 'Enter Comment',
//                           suffixIcon: MaterialButton(
//                             onPressed: () {
//                               Map<String, dynamic> data = {
//                                 "comment": comment.text,
//                                 "rate": rating.toDouble()
//                               };
//                               FirebaseFirestore.instance
//                                   .collection("rating")
//                                   .add(data)
//                                   .then((data) => {
//                                         Fluttertoast.showToast(
//                                             msg: "Rate Successful"),
//                                       })
//                                   .catchError((e) {
//                                 Fluttertoast.showToast(msg: e!.message);
//                               });
//                             },
//                             child: Text('Confirm'),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }

// class PictureCollection extends StatelessWidget {
//   PictureCollection({
//     required this.pic1,
//     required this.pic2,
//     required this.pic3,
//   });

//   final String pic1;
//   final String pic2;
//   final String pic3;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: 410,
//         child: Row(
//           children: [
//             SizedBox(
//               width: 10,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 1,
//                   ),
//                 ),
//                 margin: EdgeInsets.all(5),
//                 child: Image(
//                   image: AssetImage(pic1),
//                   fit: BoxFit.cover,
//                   width: 100,
//                   height: 90,
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                       width: 1,
//                     ),
//                   ),
//                   margin: EdgeInsets.all(5),
//                   child: Image(
//                       image: AssetImage(pic2),
//                       fit: BoxFit.cover,
//                       width: 100,
//                       height: 90)),
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.black,
//                         width: 1,
//                       ),
//                     ),
//                     margin: EdgeInsets.all(5),
//                     child: Image(
//                         image: AssetImage(pic3),
//                         fit: BoxFit.cover,
//                         width: 100,
//                         height: 90))),
//             SizedBox(
//               width: 10,
//             )
//           ],
//         ));
//   }
// }
