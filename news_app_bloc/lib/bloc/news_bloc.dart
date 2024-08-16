import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news_app_bloc/repo/news_repo.dart';

import '../models/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(
    this.newsRepo,
  ) : super(NewsLoading()) {
    on<NewsEvent>((event, emit) {});
    //9
    on<NewsByCountryCodeEvent>(_getHewsByCountry);
  }
  //3
  final NewsRepo newsRepo;
  //4
  Future<void> _getHewsByCountry(
      NewsByCountryCodeEvent event, Emitter<NewsState> emit) async {
    //5
    final news = await newsRepo.getHewsByCountry(event.countryCode);
    //8
    if (news != null) {
      emit(
        NewsSuccess(
          news: news,
        ),
      );
    } else {
      emit(const NewsError(text: 'Error State'));
    }
  }
}
