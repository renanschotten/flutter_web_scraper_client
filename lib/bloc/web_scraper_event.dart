part of 'web_scraper_bloc.dart';

@immutable
abstract class WebScraperEvent {}

class FetchDataEvent extends WebScraperEvent {
  final String searchContent;

  FetchDataEvent({required this.searchContent});
}
