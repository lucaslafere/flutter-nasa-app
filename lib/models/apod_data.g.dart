// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApodData _$ApodDataFromJson(Map<String, dynamic> json) => ApodData(
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ApodDataToJson(ApodData instance) => <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'title': instance.title,
      'url': instance.url,
    };
