import 'dart:convert';
import 'package:alquran/app/data/models/surah.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://api.alquran.cloud/v1';

  //GET SURAH
  // GET Surah
  Future<List<Datum>> getSurah() async {
    final response = await http.get(Uri.parse('$baseUrl/surah'));

    if (response.statusCode == 200) {
      final surah = Surah.fromJson(json.decode(response.body));
      return surah.data;
    } else {
      throw Exception('Failed to load Surah');
    }
  }
}
