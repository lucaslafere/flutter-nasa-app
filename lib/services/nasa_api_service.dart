import 'dart:convert';
import 'package:flutter_nasa_app/config/api_constants.dart';
import 'package:flutter_nasa_app/models/apod_data.dart';
import 'package:http/http.dart' as http;

class ApodService {
  Future<ApodData> fetchApodData({required String apiKey, String? date}) async {
    Uri uri;
    if (date != null) {
      uri = Uri.parse(
          '${ApiConstants.BASE_URL}${ApiConstants.APOD_ENDPOINT}?api_key=$apiKey&date=$date');
    } else {
      uri = Uri.parse(
          '${ApiConstants.BASE_URL}${ApiConstants.APOD_ENDPOINT}?api_key=$apiKey');
    }

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return ApodData.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to fetch APOD data');
    }
  }
}
