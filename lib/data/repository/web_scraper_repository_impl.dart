// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:web_scraper/data/datasource/web_scraper_datasource.dart';
import 'package:web_scraper/data/model/data_model.dart';
import 'package:web_scraper/domain/repositories/web_scraper_repository.dart';

class WebScraperRepositoryImpl implements WebScraperRepository {
  final WebScraperDatasource datasource;

  WebScraperRepositoryImpl({required this.datasource});

  @override
  Future<List<DataModel>?> fetchData({required String searchContent}) {
    return datasource.fetchData(searchContent: searchContent);
  }
}
