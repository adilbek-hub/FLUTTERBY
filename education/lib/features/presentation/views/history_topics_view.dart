import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/history_bolumu/history_bolumu_bloc.dart';

class HistoryTopics extends StatelessWidget {
  HistoryTopics({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator();
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is HistorySuccess) {
          return HistoryBolumuWidget(
            pageController: _pageController,
            historyTopicsModel: state.historyTopicsModel,
          );
        } else {
          throw ('ERROR');
        }
      },
    );
  }
}
