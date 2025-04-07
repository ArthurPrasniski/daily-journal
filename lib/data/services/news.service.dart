import '../models/article.model.dart';
import '../../core/constants/constants.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsApiService {
  Future<List<ArticleModel>> fetchTopHeadlines() async {
    final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=br&apiKey=$apiKey',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List articles = data['articles'];
      return articles.map((e) => ArticleModel.fromJson(e)).toList();
    }
    return [];
  }
}
