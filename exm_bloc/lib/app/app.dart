import 'package:exm_bloc/bloc/subject_bloc.dart';
import 'package:exm_bloc/services/biology_service.dart';
import 'package:exm_bloc/services/informatica_service.dart';
import 'package:exm_bloc/view.dart/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BiologyBloc>(
          create: (BuildContext context) =>
              BiologyBloc(biologyTopicsService: biologyTopicsService)
                ..add(
                  FetchDataEvent1(),
                ),
        ),
        BlocProvider<InformaticaBloc>(
          create: (BuildContext context) =>
              InformaticaBloc(informaticaService: informaticaService)
                ..add(FetchDataEvent2()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PageOne(),
      ),
    );
  }
}
