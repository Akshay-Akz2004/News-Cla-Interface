import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Newscontroller extends GetxController {
  Future<void> getTrendingNews() async {
    var baseurl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=API_KEY";
    var response = await http.get(Uri.parse(baseurl));
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      var body = jsonDecode(response.body);
      print(body);
    }
  }
}
