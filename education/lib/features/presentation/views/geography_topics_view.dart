import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:education/features/presentation/components/geography_bolumu/geography_bolumu_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeographyTopics extends StatelessWidget {
  GeographyTopics({
    super.key,
  });
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeographyBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator(color: Colors.blue);
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is GeographySuccess) {
          return GeographyBolumuWidget(
            geographyTopicsModel: state.geographyTopicsModel,
            pageController: _pageController,
          );
        } else {
          return throw ('ERROR unknown');
        }
      },
    );
  }
}
