import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/news_bloc.dart';
import '../components/loading_widget.dart';
import '../components/news_error_widget.dart';
import '../components/success_widget.dart';
import '../models/news.dart';
import '../repo/news_repo.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(newsRepo)
        ..add(
          const NewsByCountryCodeEvent(),
        ),
      child: const NewsView(),
    );
  }
}

class NewsView extends StatelessWidget {
  const NewsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          if (state is NewsLoading) {
            return const LoadingWidget();
          } else if (state is NewsSuccess) {
            return SuccessWidget(
              newsText: state.news,
            );
          } else if (state is NewsError) {
            return NewsErrorWidget(
              errorNext: state.text,
            );
          } else {
            return const NewsErrorWidget(
              errorNext: 'Belgisiz kata',
            );
          }
        }),
      ),
    );
  }
}
