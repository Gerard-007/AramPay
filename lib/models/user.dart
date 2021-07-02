import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String name;
  String email;
  String gender;
  String phone;
  String status;
  int state;
  String profilePhoto;

  // constructor or instantiator
  User({
    this.name,
    this.email,
    this.gender,
    this.phone,
    this.status,
    this.state,
    this.profilePhoto,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
