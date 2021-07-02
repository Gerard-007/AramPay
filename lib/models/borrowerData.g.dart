// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'borrowerData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BorrowerData _$BorrowerDataFromJson(Map<String, dynamic> json) {
  return BorrowerData(
    address: json['address'] as String,
    lga: json['lga'] as String,
    country: json['country'] as String,
    businessName: json['businessName'] as String,
    workingStatus: json['workingStatus'] as String,
    nin: json['nin'] as String,
    bank: json['bank'] as String,
    accountNumber: json['accountNumber'] as String,
    bvn: json['bvn'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$BorrowerDataToJson(BorrowerData instance) =>
    <String, dynamic>{
      'address': instance.address,
      'lga': instance.lga,
      'country': instance.country,
      'businessName': instance.businessName,
      'workingStatus': instance.workingStatus,
      'nin': instance.nin,
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'bvn': instance.bvn,
      'age': instance.age,
    };
