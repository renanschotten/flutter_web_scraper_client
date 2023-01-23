import 'package:web_scraper/domain/entities/data.dart';

abstract class WebScraperRepository {
  Future<List<Data>?> fetchData({required String searchContent});
}
