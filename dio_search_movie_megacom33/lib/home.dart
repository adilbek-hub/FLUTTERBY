import 'package:dio/dio.dart';
import 'package:dio_search_movie_megacom33/api_const.dart';
import 'package:dio_search_movie_megacom33/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String titles = "";
  String image = "";
  double raiting = 0.0;
  String raitingText = '';

  final TextEditingController controller = TextEditingController();
  // MovieModel? model;
  // Future<void> getData([String? title]) async {
  //   model = await Repository().getMovie(title ?? '');
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: CustomTextField(
          controller: controller,
        ),
        actions: [
          IconButton(
              onPressed: () {
                getMovie(controller.text);
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(titles),
              const SizedBox(height: 20),
              image == ''
                  ? const Icon(
                      Icons.error,
                      size: 110,
                    )
                  : Image.network(image),
              const SizedBox(height: 20),
              Text(raitingText),
              RaitingBar(
                initialRating: raiting,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getMovie(String title) async {
    final Dio dio = Dio();
    try {
      final response =
          await dio.get('http://www.omdbapi.com/', queryParameters: {
        "apikey": ApiKey.apiKey,
        "t": title,
      });
      if (response.statusCode == 200) {
        final result = MovieModel.fromJson(response.data);
        image = result.poster ?? '';
        titles = result.title ?? '';
        raitingText = result.ratings![0].value ?? '';
      }
    } catch (e) {
      image = '';
      title = 'ERROR TITLE';
      raitingText = '0';
    }
    setState(() {});
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: "Введите название фильма",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          fillColor: Colors.grey,
          filled: true),
    );
  }
}

class RaitingBar extends StatelessWidget {
  const RaitingBar({super.key, required this.initialRating});
  final double initialRating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
