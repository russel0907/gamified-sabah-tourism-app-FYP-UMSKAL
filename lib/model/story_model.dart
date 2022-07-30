// class StoryModel {
//   String? storytitle;
//   String? storyname;
//   String? storydesc;
//   String? accomodation;
//   String? backgroundpic;
//   String? pic1;
//   String? pic2;
//   String? pic3;
//   String? reference;
//   String? tour;

//   StoryModel(
//       {this.storytitle,
//       this.storyname,
//       this.storydesc,
//       this.accomodation,
//       this.backgroundpic,
//       this.pic1,
//       this.pic2,
//       this.pic3,
//       this.reference,
//       this.tour});

//   // data from server
//   // ignore: non_constant_identifier_names
//   factory StoryModel.Map(map) {
//     return StoryModel(
//         storytitle: map['PlaceTitle'],
//         storyname: map['PlaceName'],
//         storydesc: map['PlaceStory'],
//         accomodation: map['Accomodation'],
//         backgroundpic: map['BackgroundPicture'],
//         pic1: map['PlacePicture'],
//         pic2: map['PlacePicture2'],
//         pic3: map['PlacePicture3'],
//         reference: map['Reference'],
//         tour: map['Tour']);
//   }

//   // factory StoryModel.fromDocument(DocumentSnapshot _snapshot) {
//   //   Map<String, dynamic> _data = _snapshot.data() as Map<String, dynamic>;
//   //   return StoryModel(
//   //     storytitle: _data['PlaceTitle'],
//   //     storyname: _data['PlaceName'],
//   //     storydesc: _data['PlaceStory'],
//   //   );
//   // }
// }

//   // factory StoryModel.fromFirestore(
//   //   QueryDocumentSnapshot<Map<String, dynamic>> snapshot,
//   //   SnapshotOptions? options,
//   // ) {
//   //   final data = snapshot.data();
//   //   return StoryModel(
//   //     storyname: data['PlaceName'],
//   //     storydesc: data['PlaceStory'],
//   //     storytitle: data['PlaceTitle'],
//   //     accomodation: data['Accomodation'],
//   //     backgroundpic: data['BackgroundPicture'],
//   //     pic1: data['PlacePicture'],
//   //     pic2: data['PlacePicture2'],
//   //     pic3: data['PlacePicture3'],
//   //     reference: data['Reference'],
//   //     tour: data['Tour'],
//   //   );
//   // }

//   // Map<String, dynamic> toFirestore() {
//   //   return {
//   //     if (storyname != null) "PlaceName": storyname,
//   //     if (storydesc != null) "PlaceStory": storydesc,
//   //     if (storytitle != null) "PlaceTitle": storytitle,
//   //   };
//   // }

