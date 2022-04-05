class UserModel {
  String? uid;
  String? email;
  String? name;
  String? phonenumber;

  UserModel({this.uid, this.email, this.name, this.phonenumber});

  //data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      phonenumber: map['phonenumber'],
    );
  }

  //send data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'phonenumber': phonenumber,
    };
  }
}
