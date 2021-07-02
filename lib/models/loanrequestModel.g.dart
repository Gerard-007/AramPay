// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loanRequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanRequests _$LoanRequestsFromJson(Map<String, dynamic> json) {
  return LoanRequests(
    url: json['url'] as String,
    id: json['id'] as int,
    amount: json['amount'] as String,
    requestStatus: json['request_status'] as String,
    durationFigure: json['duration_figure'] as int,
    duration: json['duration'] as String,
    repaymentInterval: json['repayment_interval'] as String,
    slug: json['slug'] as String,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
  );
}

Map<String, dynamic> _$LoanRequestsToJson(LoanRequests instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'amount': instance.amount,
      'requestStatus': instance.requestStatus,
      'durationFigure': instance.durationFigure,
      'duration': instance.duration,
      'repaymentInterval': instance.repaymentInterval,
      'slug': instance.slug,
      'timestamp': instance.timestamp?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
