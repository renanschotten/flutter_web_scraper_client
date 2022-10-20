import 'package:web_scraper/model/data_model.dart';
import 'package:web_scraper/repository/web_scraper_repository.dart';

class WebScraperController {
  final WebScraperRepository repository = WebScraperRepository();

  Future<List<DataModel>?> fetchData({required String searchContent}) async {
    return await repository.fetchData(searchContent: searchContent);
  }
}
