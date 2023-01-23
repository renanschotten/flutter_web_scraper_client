import 'package:get_it/get_it.dart';
import 'package:web_scraper/data/datasource/web_scraper_datasource.dart';
import 'package:web_scraper/data/datasource/web_scraper_mock_datasource.dart';
import 'package:web_scraper/data/repository/web_scraper_repository_impl.dart';
import 'package:web_scraper/domain/repositories/web_scraper_repository.dart';
import 'package:web_scraper/domain/usecases/fetch_data.dart';
import 'package:web_scraper/presentation/bloc/web_scraper_bloc.dart';

GetIt getIt = GetIt.instance;
const mock = true;

Future<void> init() async {
  //Datasource
  if (mock) {
    getIt.registerSingleton<WebScraperDatasource>(WebScraperMockDatasource());
  } else {
    getIt.registerSingleton<WebScraperDatasource>(WebScraperHttpDatasource());
  }

  //Repository
  getIt.registerSingleton<WebScraperRepository>(
    WebScraperRepositoryImpl(datasource: getIt<WebScraperDatasource>()),
  );

  //Usecases
  getIt.registerSingleton<FetchData>(
    FetchData(repository: getIt<WebScraperRepository>()),
  );

  //Bloc
  getIt.registerSingleton<WebScraperBloc>(
    WebScraperBloc(fetchData: getIt<FetchData>()),
  );
}
