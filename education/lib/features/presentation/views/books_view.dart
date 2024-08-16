import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:education/features/presentation/components/custom_serach_delegate.dart';
import 'package:education/features/presentation/components/subjects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const BackButton(
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
          ],
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/capitals/education.jpg'),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Китептер \nКоллекциясы',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              BlocBuilder<SubjectsBloc, EducationState>(
                builder: (context, state) {
                  if (state is EducationLoading) {
                    return const CupertinoActivityIndicator(color: Colors.blue);
                  } else if (state is EducationError) {
                    return Text(state.text);
                  } else if (state is SubjectsSuccess) {
                    return SubjectsView(
                        subjectsTopicsModel: state.subjectsTopicsModel);
                  } else {
                    throw ('Error in $state');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
