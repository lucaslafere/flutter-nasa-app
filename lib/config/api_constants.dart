class ApiConstants {
  static const String BASE_URL = 'https://api.nasa.gov/planetary/';
  static const String APOD_ENDPOINT = 'apod';
  static const String API_KEY = dotenv.env['NASA_API_KEY']!;
}
