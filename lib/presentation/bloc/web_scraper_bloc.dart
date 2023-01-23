import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:web_scraper/domain/entities/data.dart';
import 'package:web_scraper/domain/usecases/fetch_data.dart';

part 'web_scraper_event.dart';
part 'web_scraper_state.dart';

class WebScraperBloc extends Bloc<WebScraperEvent, WebScraperState> {
  final FetchData fetchData;
  WebScraperBloc({required this.fetchData}) : super(WebScraperInitial()) {
    on<FetchDataEvent>((event, emit) async {
      emit(WebScraperLoading());
      final response = await fetchData(
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
