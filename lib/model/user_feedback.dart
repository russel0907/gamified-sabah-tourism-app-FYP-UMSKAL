class UserFeedback {
  String? name;
  String? comment;

  UserFeedback({this.name, this.comment});

  //data from server
  factory UserFeedback.fromMap(map) {
    return UserFeedback(
      name: map['name'],
      comment: map['comment'],
    );
  }
}
