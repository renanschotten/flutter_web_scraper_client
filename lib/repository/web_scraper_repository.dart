import 'dart:convert';

import 'package:web_scraper/model/data_model.dart';
import 'package:http/http.dart' as http;

class WebScraperRepository {
  static const BASE_URL =
      "https://java-web-scraper.herokuapp.com/api/v1/scraper";

  Future<List<DataModel>?> fetchData({required String searchContent}) async {
    List<DataModel> dataModelList = [];
    var url = Uri.parse("$BASE_URL/$searchContent");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List body = json.decode(response.body);
        for (var element in body) {
          dataModelList.add(DataModel.fromMap(element));
        }
        return dataModelList;
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
