// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:web_scraper/domain/entities/data.dart';
import 'package:web_scraper/domain/repositories/web_scraper_repository.dart';

class FetchData {
  final WebScraperRepository repository;

  FetchData({required this.repository});

  Future<List<Data>?> call({required String searchContent}) {
    return repository.fetchData(searchContent: searchContent);
  }
}
