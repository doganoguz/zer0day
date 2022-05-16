import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:zer0day/model/news.dart';
import 'package:zer0day/model/article.dart';

class NewsService {
  static NewsService _singleton = NewsService._internal();
  NewsService._internal();

  factory NewsService() {
    return _singleton;
  }

  static Future<List<Articles>?> getNews() async {
    String url =
        'http://newsapi.org/v2/top-headlines?country=tr&category=technology&apiKey=9c5b65dc818c46b38d353f0dd899f754';

    final response = await http.get(Uri.parse(url));

    if (response.body.isNotEmpty) {
      final responseJson = json.decode(response.body);
      News news = News.fromJson(responseJson);
      return news.articles;
    }
    return null;
  }
}
