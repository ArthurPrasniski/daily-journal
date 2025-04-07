import 'package:daily_journal/data/services/news.service.dart';
import '../models/article.model.dart';

class NewsRepository {
  final NewsApiService api;

  NewsRepository({required this.api});
  
  Future<List<ArticleModel>> fetchTopHeadlines() async {
    return await api.fetchTopHeadlines();
  }
}

class NewsEverythingRepository {
  final NewsApiEverythingService api;

  NewsEverythingRepository({required this.api});
  
  Future<List<ArticleModel>> fetchEverything() async {
    return await api.fetchEverything();
  }
}