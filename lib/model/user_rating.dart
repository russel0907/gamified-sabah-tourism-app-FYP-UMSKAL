class UserRating {
  String? uid;
  String? placeid;
  String? rate;
  String? comment;

  UserRating({this.uid, this.placeid, this.rate, this.comment});

  //data from server
  factory UserRating.fromMap(map) {
    return UserRating(
      uid: map['uid'],
      placeid: map['placeid'],
      rate: map['rate'],
      comment: map['comment'],
    );
  }

  //send data to server
  /*Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'placeid': placeid,
      'star': star,
      'ratingcomment': ratingcomment,
    };
  }*/
}
