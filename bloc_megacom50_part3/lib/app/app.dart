import 'package:bloc_megacom50_part3/bloc/send_email_bloc.dart';
import 'package:bloc_megacom50_part3/repasitory/email.repository.dart';
import 'package:bloc_megacom50_part3/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailBloc(
          emailRepository: EmailRepository(
              dio: RepositoryProvider.of<EmailRepository>(context).dio)),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NomeView(),
      ),
    );
  }
}
