import 'package:bloc_megacom48_part1/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example Bloc State Management',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            //BlocBuilder занимается отрисовкой виджетов, зависимости от состояния.
            BlocBuilder<ExampleBloc, ExampleState>(
              builder: (context, state) {
                print(state);
                if (state is ExampleLoading) {
                  return const CircularProgressIndicator();
                } else if (state is ExampleSuccess) {
                  return Text(state.returnedData.toString());
                } else if (state is ExampleError) {
                  return Text(state.errorText);
                }
                return SizedBox();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ExampleBloc>(context).add(
            PrintEvent(data: controller.text),
          );
        },
        child: const Text('Event'),
      ),
    );
  }
}
