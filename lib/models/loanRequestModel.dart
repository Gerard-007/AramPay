import 'package:json_annotation/json_annotation.dart';

part "loanRequestModel.g.dart";

@JsonSerializable()
class LoanRequests {
  String url;
  int id;
  String amount;
  String requestStatus;
  int durationFigure;
  String duration;
  String repaymentInterval;
  String slug;
  DateTime timestamp;
  DateTime updated;

  LoanRequests({
    this.url,
    this.id,
    this.amount,
    this.requestStatus,
    this.durationFigure,
    this.duration,
    this.repaymentInterval,
    this.slug,
    this.timestamp,
    this.updated,
  });

  factory LoanRequests.fromJson(Map<String, dynamic> json) =>
      _$LoanRequestsFromJson(json);
  Map<String, dynamic> toJson() => _$LoanRequestsToJson(this);
}
