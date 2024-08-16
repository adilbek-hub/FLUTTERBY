import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/informatica_bolumu/error_text_widget.dart';
import '../components/informatica_bolumu/informatica_bolumu_bloc.dart';
import '../components/informatica_bolumu/loading_widget.dart';

class InformaticaTopics extends StatelessWidget {
  InformaticaTopics({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InformaticaBloc, EducationState>(
        builder: (context, state) {
      if (state is EducationLoading) {
        return const LoadingWidget();
      } else if (state is InformaticaSuccess) {
        return InformaticaBolumuWidget(
          pageController: _pageController,
          informaticaTopics: state.informaticaModel,
        );
      } else if (state is EducationError) {
        return ErrorTextWidget(errorText: state.text);
      } else {
        return const Text('Unknown error');
      }
    });
  }
}
