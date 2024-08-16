import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:education/features/presentation/pages/topic_pages_about_geography/asia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:education/features/presentation/components/informatica_bolumu/loading_widget.dart';

class AsiaContinenti extends StatelessWidget {
  const AsiaContinenti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<GeographyBloc, EducationState>(
          builder: (context, state) {
            if (state is EducationLoading) {
              return const LoadingWidget();
            } else if (state is EducationError) {
              return Center(
                child: Text(state.text),
              );
            } else if (state is GeographySuccess) {
              return AsiaLesson(
                geographyTopicsModel: state.geographyTopicsModel,
              );
            } else {
              return throw ('ERROR UNKNOWN');
            }
          },
        ),
      ),
    );
  }
}
