import 'package:http/http.dart';
import 'package:moru_weather_app/data/remote_service.dart';
import 'package:moru_weather_app/remote_urls.dart';

class ApiService extends RemoteService {
  @override
  Future<Response> getWeatherData(String location) async {
    Map<String, String> queryParameters = {
      'q': location,
      'appid': '67fcd0f03bd6d3feb6f26d6e9f413601',
      'units': 'metric'
    };

    final response = await get(
        Uri.https(RemoteUrls.baseUrl, RemoteUrls.endPoint, queryParameters));

    return response;
  }
}