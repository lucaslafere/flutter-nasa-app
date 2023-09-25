import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // ignore: constant_identifier_names
  static const String baseURL = 'https://api.nasa.gov/planetary/';
  static const String apodEndpoint = 'apod';
  String apiKey = dotenv.env['NASA_API_KEY']!;
}
