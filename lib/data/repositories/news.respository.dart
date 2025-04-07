import 'package:daily_journal/data/services/news.service.dart';
import '../models/article.model.dart';

class NewsRepository {
  late final NewsApiService api;

  Future<List<ArticleModel>> fetchTopHeadlines() async {
    return await api.fetchTopHeadlines();
  }
}