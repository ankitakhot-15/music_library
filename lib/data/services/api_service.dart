import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/constants/api_constants.dart';

class ApiService {
  Future<List<dynamic>> fetchTracks(
      String query, int index, int limit) async {
    final url =
        "${ApiConstants.baseUrl}/tracks?q=$query&index=$index&limit=$limit";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["tracks"];
    }

    throw Exception("API ERROR");
  }
}