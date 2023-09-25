import 'package:json_annotation/json_annotation.dart';

part 'apod_data.g.dart';

@JsonSerializable()
class ApodData {
  final String date;
  final String explanation;
  final String title;
  final String url;

  ApodData({
    required this.date,
    required this.explanation,
    required this.title,
    required this.url,
  });

  factory ApodData.fromJson(Map<String, dynamic> json) =>
      _$ApodDataFromJson(json);
  Map<String, dynamic> toJson() => _$ApodDataToJson(this);
}
