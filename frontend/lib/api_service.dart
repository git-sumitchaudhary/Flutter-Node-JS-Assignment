import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000/api'; // Replace with your backend URL

  static Future<List<dynamic>> getCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/categories'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load categories');
    }
  }

  static Future<List<dynamic>> getBanquets() async {
    final response = await http.get(Uri.parse('$baseUrl/banquets'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load banquets');
    }
  }

  static Future<List<dynamic>> getTravelAndStay() async {
    final response = await http.get(Uri.parse('$baseUrl/travel'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load travel and stay options');
    }
  }

  static Future<List<dynamic>> getRetailAndShops() async {
    final response = await http.get(Uri.parse('$baseUrl/retail'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load retail and shops options');
    }
  }

  static Future<List<dynamic>> searchBanquets(Map<String, dynamic> searchCriteria) async {
    final response = await http.post(
      Uri.parse('$baseUrl/banquets/search'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(searchCriteria),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to search banquets');
    }
  }
}

