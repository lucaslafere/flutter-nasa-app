import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static const String BASE_URL = 'https://api.nasa.gov/planetary/';
  static const String APOD_ENDPOINT = 'apod';
  String apiKey = dotenv.env['NASA_API_KEY']!;
}
