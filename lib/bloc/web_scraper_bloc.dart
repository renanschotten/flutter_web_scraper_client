import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:web_scraper/model/data_model.dart';
import 'package:web_scraper/repository/web_scraper_repository.dart';

part 'web_scraper_event.dart';
part 'web_scraper_state.dart';

class WebScraperBloc extends Bloc<WebScraperEvent, WebScraperState> {
  final WebScraperRepository repository = WebScraperRepository();
  WebScraperBloc() : super(WebScraperInitial()) {
    on<FetchDataEvent>((event, emit) async {
      emit(WebScraperLoading());
      final response = await repository.fetchData(
        searchContent: event.searchContent,
      );
      if (response == null || response.isEmpty) {
        emit(WebScraperFailure());
      } else {
        emit(WebScraperSuccess(response: response));
      }
    });
  }
}
