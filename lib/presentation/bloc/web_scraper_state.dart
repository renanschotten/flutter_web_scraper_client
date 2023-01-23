// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'web_scraper_bloc.dart';

@immutable
abstract class WebScraperState {}

class WebScraperInitial extends WebScraperState {}

class WebScraperLoading extends WebScraperState {}

class WebScraperFailure extends WebScraperState {}

class WebScraperSuccess extends WebScraperState {
  final List<Data> response;
  WebScraperSuccess({required this.response});
}
