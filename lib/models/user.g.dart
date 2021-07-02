// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['full_name'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    phone: json['phone_number'] as String,
    status: json['status'] as String,
    state: json['state'] as int,
    profilePhoto: json['image'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'phone': instance.phone,
      'status': instance.status,
      'state': instance.state,
      'profilePhoto': instance.profilePhoto,
    };
