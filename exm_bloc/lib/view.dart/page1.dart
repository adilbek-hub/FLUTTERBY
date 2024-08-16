import 'package:exm_bloc/bloc/subject_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Hello Page One'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<BiologyBloc, SubjectState>(builder: (context, state) {
            if (state is SubjectLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is BiologySuccess) {
              return Text(state.biologyModel![0].title);
            } else if (state is SubjectError) {
              return Text(state.error);
            } else {
              return const Text('ERROR');
            }
          }),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<InformaticaBloc, SubjectState>(builder: (context, state) {
            if (state is SubjectLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is InformaticaSuccess) {
              return Text(state.informaticaToicsModel.informatica[0].title);
            } else if (state is SubjectError) {
              return Text(state.error);
            } else {
              return const Text('ERROR');
            }
          })
        ],
      ),
    );
  }
}
