import 'package:json_annotation/json_annotation.dart';

part 'borrowerData.g.dart';

@JsonSerializable()
class BorrowerData {
  String address;
  String lga;
  String country;
  String businessName;
  String workingStatus;
  String nin;
  String bank;
  String accountNumber;
  String bvn;
  int age;

  // constructor or instantiator
  BorrowerData({
    this.address,
    this.lga,
    this.country,
    this.businessName,
    this.workingStatus,
    this.nin,
    this.bank,
    this.accountNumber,
    this.bvn,
    this.age,
  });

  factory BorrowerData.fromJson(Map<String, dynamic> json) =>
      _$BorrowerDataFromJson(json);
  Map<String, dynamic> toJson() => _$BorrowerDataToJson(this);
}
