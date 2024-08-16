import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/cubit/home_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case Fetchstatus.initial:
                return const Text('Initial state');
              case Fetchstatus.loading:
                return const CircularProgressIndicator();
              case Fetchstatus.error:
                return const Text('Error text');
              case Fetchstatus.success:
                return ListView.builder(
                  itemCount: state.users?.length,
                  itemBuilder: (context, index) {
                    final user = state.users![index];
                    return Card(
                      child: ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                      ),
                    );
                  },
                );

              default:
                return const Text('Default state');
            }
          },
        ),
      ),
    );
  }
}
