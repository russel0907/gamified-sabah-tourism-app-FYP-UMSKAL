class StoryModel {
  String? storyid;
  String? storyname;
  String? storytitle;
  String? storydesc;
  String? storypicture1;
  String? storypicture2;
  String? storypicture3;
  String? storybackgroundpicture;

  StoryModel(
      {this.storyid,
      this.storyname,
      this.storytitle,
      this.storydesc,
      this.storypicture1,
      this.storypicture2,
      this.storypicture3,
      this.storybackgroundpicture});

  //data from server
  factory StoryModel.fromMap(map) {
    return StoryModel(
      storyid: map['placeid'],
      storyname: map['placename'],
      storytitle: map['placetitle'],
      storydesc: map['placedesc'],
      storypicture1: map['placepicture1'],
      storypicture2: map['placepicture2'],
      storypicture3: map['placepicture3'],
      storybackgroundpicture: map['placebackgroundpicture'],
    );
  }

  /*send data to server
  Map<String, dynamic> toMap() {
    return {
      /'uid': uid,
      'placeid': placeid,
      'star': star,
      'ratingcomment': ratingcomment,
    };
  }
  */
}
