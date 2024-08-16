part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

// Параметрлер Eventте жарыяланат.
class NewsByCountryCodeEvent extends NewsEvent {
  //3
  // const NewsFetchEvent({this.countryCode});
//6
  const NewsByCountryCodeEvent([this.countryCode = 'us']);
  //2
  // final String? countryCode;
  //7
  final String countryCode;
}
