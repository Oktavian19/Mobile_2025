import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:belanja/models/item.dart';

class ItemService {
  static Future<List<Item>> fetchItems() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      final List<dynamic> productsJson = jsonResponse['products'];
      return productsJson.map((json) => Item.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load items from API');
    }
  }
}