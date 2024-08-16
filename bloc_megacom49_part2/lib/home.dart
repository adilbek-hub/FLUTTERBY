import 'package:bloc_megacom49_part2/bloc/dogs_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<DogsBloc>(context).add(GetDogEvent());
          },
          icon: const Icon(Icons.start),
        ),
        title: const Text('Bloc part '),
      ),
      body:
          // BlocBuilder умеет рисовать но не умеет выполнять функцию например(Алерт диалог не показывает)
          // BlocListener умеет выполнять функцию например когда ощибка произайдет ты можеш алертом показать это.
          //BlocConsumer объединяет BlocBuilder и BlocListener.
          /*BlocBuilder<DogsBloc, DogsState>(
        builder: (context, state) {
          if (state is DogsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DogsSuccess) {
            return Center(
              child: Image.network(state.dogModel.message ?? ''),
            );
          } else if (state is DogsError) {
            return Text(state.textError);
          }
          return const SizedBox();
        },
      ),
      */
          /*
          BlocListener<DogsBloc, DogsState>(
        listener: (context, state) {
          if (state is DogsError) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog.adaptive(
                  content: Text(state.textError),
                );
              },
            );
          }
        },
        child: const SizedBox(),
      ),
      */
          BlocConsumer<DogsBloc, DogsState>(
        listener: (context, state) {
          if (state is DogsError) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog.adaptive(
                  content: Text(state.textError),
                );
              },
            );
          }
        },
        builder: (context, state) {
          if (state is DogsSuccess) {
            return Center(child: Image.network(state.dogModel.message ?? ''));
          }
          return SizedBox();
        },
      ),
    );
  }
}
