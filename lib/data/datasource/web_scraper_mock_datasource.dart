import 'package:web_scraper/data/datasource/web_scraper_datasource.dart';
import 'package:web_scraper/data/model/data_model.dart';

class WebScraperMockDatasource implements WebScraperDatasource {
  @override
  Future<List<DataModel>?> fetchData({required String searchContent}) async {
    await Future.delayed(const Duration(seconds: 2));
    List<DataModel> dataModelList = [];
    List body = mock;
    for (var element in body) {
      dataModelList.add(DataModel.fromMap(element));
    }
    return dataModelList;
  }
}

final mock = [
  {"title": "Google Livros", "url": "https://books.google.com.br/"},
  {"title": "Google Books", "url": "https://books.google.com/"},
  {
    "title": "Books Livros: comprar mais barato no Submarino",
    "url": "https://www.submarino.com.br/busca/books-livros"
  },
  {
    "title": "Livros no Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Dpt_BR%26gl%3DUS"
  },
  {
    "title": "Books on Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Den_US%26gl%3DUS"
  },
  {"title": "Apple Books", "url": "https://www.apple.com/br/apple-books/"},
  {
    "title": "O que é e-book? – Aplicativos e Software - Tecnoblog",
    "url": "https://tecnoblog.net/responde/o-que-e-e-book/"
  },
  {
    "title": "Powell's Books | The World's Largest Independent Bookstore",
    "url": "https://www.powells.com/"
  },
  {"title": "SciELO Livros", "url": "https://books.scielo.org/"},
  {
    "title": "Descubra os melhores livros on-line - Scribd",
    "url": "https://pt.scribd.com/books"
  },
  {"title": "Google Livros", "url": "https://books.google.com.br/"},
  {"title": "Google Books", "url": "https://books.google.com/"},
  {
    "title": "Books Livros: comprar mais barato no Submarino",
    "url": "https://www.submarino.com.br/busca/books-livros"
  },
  {
    "title": "Livros no Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Dpt_BR%26gl%3DUS"
  },
  {
    "title": "Books on Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Den_US%26gl%3DUS"
  },
  {"title": "Apple Books", "url": "https://www.apple.com/br/apple-books/"},
  {
    "title": "O que é e-book? – Aplicativos e Software - Tecnoblog",
    "url": "https://tecnoblog.net/responde/o-que-e-e-book/"
  },
  {
    "title": "Powell's Books | The World's Largest Independent Bookstore",
    "url": "https://www.powells.com/"
  },
  {"title": "SciELO Livros", "url": "https://books.scielo.org/"},
  {
    "title": "Descubra os melhores livros on-line - Scribd",
    "url": "https://pt.scribd.com/books"
  },
  {"title": "Google Livros", "url": "https://books.google.com.br/"},
  {"title": "Google Books", "url": "https://books.google.com/"},
  {
    "title": "Books Livros: comprar mais barato no Submarino",
    "url": "https://www.submarino.com.br/busca/books-livros"
  },
  {
    "title": "Livros no Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Dpt_BR%26gl%3DUS"
  },
  {
    "title": "Books on Google Play",
    "url": "https://play.google.com/store/books%3Fhl%3Den_US%26gl%3DUS"
  },
  {"title": "Apple Books", "url": "https://www.apple.com/br/apple-books/"},
  {
    "title": "O que é e-book? – Aplicativos e Software - Tecnoblog",
    "url": "https://tecnoblog.net/responde/o-que-e-e-book/"
  },
  {
    "title": "Powell's Books | The World's Largest Independent Bookstore",
    "url": "https://www.powells.com/"
  },
  {"title": "SciELO Livros", "url": "https://books.scielo.org/"},
  {
    "title": "Descubra os melhores livros on-line - Scribd",
    "url": "https://pt.scribd.com/books"
  }
];
