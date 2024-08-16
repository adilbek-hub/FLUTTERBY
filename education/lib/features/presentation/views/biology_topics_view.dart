import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/biology_bolumu/biology_bolumu_bloc.dart';

class BiologyTopics extends StatelessWidget {
  BiologyTopics({super.key});
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BiologyBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator(color: Colors.red);
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is BiologySuccess) {
          return BiologyBolumuWidget(
            pageController: _pageController,
            biologyBolumuTopicsModel: state.biologyTopicsModel,
          );
        } else {
          throw ('STATE cannot');
        }
      },
    );
  }
}
